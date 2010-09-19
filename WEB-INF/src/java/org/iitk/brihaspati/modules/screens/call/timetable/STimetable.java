package org.iitk.brihaspati.modules.screens.call.timetable;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Date;
import java.io.*;

import org.apache.torque.Torque;
import org.apache.torque.TorqueException;
import org.apache.torque.util.BasePeer;
import org.apache.torque.util.Criteria;
import org.iitk.brihaspati.om.Events;
import org.iitk.brihaspati.om.*;
import org.iitk.brihaspati.om.EventsPeer;

public class STimetable implements Constants {

	/*******    Common data for each timetable object ***********************/

	int numRooms;										// Total number of rooms
	int  numSlots;										// Total number of slots
	ArrayList<Event> allEvents;							// indices of all events
	boolean eventsMatrix[][];							// Event matrix representing conflicts
	ArrayList<Integer> roomsForEvent[];					// Rooms fitted for each event
	ArrayList<Course> allCourses;
	ArrayList<ArrayList<Integer>> courseToEvents;		// Mapping from course to events 
	int eventToCourse[];								// Mapping from event to course

	/*************************     Details of event		***************************/
	int roomOfEvent[];
	int slotOfEvent[];
	int penaltyOfEvent[]; 								// penalty associated with each event


	/************************      Details of slot		***************************/

	int slotsOrder[];									// Represents ordering of slots.
	ArrayList<Integer> eventsInSlot[];					// List of events in each slot
	ArrayList<Integer> roomsInSlot[];					// Busy Rooms in each slot
	int penaltyOfSlot[]; 								// penalty associated with each slot

	/***********************       Others				**************************/

	int totalPenalty; 									// total penalty of this timetable
	ArrayList<Integer> unassignedEvents;				// Unassigned events
	STimetable parentTimetable;
	boolean haveBeenGenerated = false;					// GenerateFirstTimetable can be called only once

	public STimetable() throws TimetableException {
		initialize();
	}

	public STimetable(STimetable t1) throws TimetableException {
		copy(t1);
	}

	protected void initialize() throws TimetableException {
		fetchData();

		roomOfEvent = new int[allEvents.size()];
		slotOfEvent = new int[allEvents.size()];
		penaltyOfEvent = new int[allEvents.size()];

		slotsOrder = new int[numSlots];
		eventsInSlot = new ArrayList[numSlots];
		roomsInSlot = new ArrayList[numSlots];
		penaltyOfSlot = new int[numSlots];

		for (int i = 0; i < allEvents.size(); i++) {
			roomOfEvent[i] = NIL;
			slotOfEvent[i] = NIL;
			penaltyOfEvent[i] = 0;
		}

		for (int i = 0; i < numSlots; i++) {
			eventsInSlot[i] = new ArrayList<Integer>();
			roomsInSlot[i] = new ArrayList<Integer>();
			slotsOrder[i] = i;
			penaltyOfSlot[i] = 0;
		}

		totalPenalty = 0;
		parentTimetable = null;
		unassignedEvents = new ArrayList<Integer>();
	}

	protected void copy(STimetable t) throws TimetableException {

		fetchData();

		roomOfEvent = new int[allEvents.size()];
		slotOfEvent = new int[allEvents.size()];
		penaltyOfEvent = new int[allEvents.size()];

		penaltyOfSlot = new int[numSlots];
		slotsOrder = new int[numSlots];
		eventsInSlot = new ArrayList[numSlots];
		roomsInSlot = new ArrayList[numSlots];

		for (int i = 0; i < allEvents.size(); i++) {
			roomOfEvent[i] = t.roomOfEvent[i];
			slotOfEvent[i] = t.slotOfEvent[i];
			penaltyOfEvent[i] = t.penaltyOfEvent[i];
		}

		for (int i = 0; i < numSlots; i++) {
			eventsInSlot[i] = new ArrayList<Integer>(t.eventsInSlot[i]);
			roomsInSlot[i] = new ArrayList<Integer>(t.roomsInSlot[i]);
			slotsOrder[i] = t.slotsOrder[i];
			penaltyOfSlot[i] = t.penaltyOfSlot[i];
		}

		totalPenalty = t.totalPenalty;
		this.parentTimetable = t.parentTimetable;
		unassignedEvents = new ArrayList<Integer>(t.unassignedEvents);
		haveBeenGenerated = t.haveBeenGenerated;
	}

	private void fetchData() throws TimetableException {
		Data data = Data.getInstance();
		numRooms = data.getRoomList().size();
		allEvents = data.getEventList();
		numSlots = data.getTimeSlots().size();
		eventsMatrix = data.getEventsMatrix();
		roomsForEvent = data.getRoomsForEventList();
		allCourses = data.getAllCourses();
		courseToEvents = data.getCourseToEventMapping();
		eventToCourse = data.getEventToCourseMapping();

		if(null == allEvents) 
			throw new TimetableException("List of events is Null");

		if(0 == numRooms)
			throw new TimetableException("No rooms are available");

		if(0 == numSlots) 
			throw new TimetableException("No slots are available");
	}

	public void setParentTimeTable(STimetable parent) {
		this.parentTimetable = parent;
	}

	public STimetable mergeWithParent() throws TimetableException {
		if(null != parentTimetable)
			merge(parentTimetable);
		return this;
	}

	public STimetable merge(STimetable st) throws TimetableException {
		/* Following data structures will be updated
		 * Events - slotOfEvent, roomOfEvent, penaltyOfEvent
		 * Slot - penaltyOfSlot, eventsInSlot,roomsInSlot
		 * Others - totalPenalty, parentTimetable,unassignedEvents
		 */
		if(null != st.parentTimetable)
			throw new TimetableException("parent Timetable of merging timetable is not null");

		for(int slotIndex = 0;slotIndex < numSlots;slotIndex++) {
			int slotNum = slotsOrder[slotIndex];
			ArrayList<Integer> parentEventList = st.getEventsInSlot(slotIndex);
			ArrayList<Integer> parentRoomsList = st.getRoomsInSlot(slotIndex);

			eventsInSlot[slotNum].addAll(parentEventList);
			roomsInSlot[slotNum].addAll(parentRoomsList);

			for(Integer tmpE:parentEventList) {
				slotOfEvent[tmpE] = slotNum;
				roomOfEvent[tmpE] = st.roomOfEvent[tmpE];
				penaltyOfEvent[tmpE] = st.penaltyOfEvent[tmpE];
			}
		}

		unassignedEvents.addAll(st.unassignedEvents);
		totalPenalty += st.totalPenalty;
		parentTimetable = st.parentTimetable;	//parentTimetable of st must be null

		return this;
	}

	public boolean isBetterThan(STimetable t) throws TimetableException {
		if (null == t)
			throw new TimetableException("Cannot compare null argument");
		if (t.unassignedEvents.size() < this.unassignedEvents.size())
			return false;
		else if (t.unassignedEvents.size() > this.unassignedEvents.size())
			return true;
		else {
			if (t.totalPenalty < this.totalPenalty)
				return false;
			else
				return true;
		}
	}

	protected ArrayList<Integer> getRoomsInSlot(int slotIndex) {
		ArrayList<Integer> roomsList = new ArrayList<Integer>(
				roomsInSlot[slotsOrder[slotIndex]]);
		if (null != parentTimetable)
			roomsList.addAll(parentTimetable.getRoomsInSlot(slotIndex));
		return roomsList;
	}

	protected ArrayList<Integer> getEventsInSlot(int slotIndex) {
		ArrayList<Integer> eventList = new ArrayList<Integer>(eventsInSlot[slotsOrder[slotIndex]]);
		if (null != parentTimetable)
			eventList.addAll(parentTimetable.getEventsInSlot(slotIndex));
		return eventList;
	}

	/*public boolean checkEvents(String[] slotsData, String tableFor, String code) 
	throws TimetableException{
			for(int i = 0; i < slotsData.length; i++) {
				String[] slotEvent = slotsData[i].split("::");
				String TCRFoB = slotEvent[0];
				String slot = slotEvent[1];
				slot = slot.trim();
				String eventType = Character.toString(TCRFoB.charAt(0)).trim();
				String[] values = TCRFoB.split("<br>");
				String courseType = values[0].substring(1).trim();
				String roomCode = values[1].trim();
				String fac_batch = values[2].trim();
				ArrayList<Integer> events = getEventsInSlot((Integer.valueOf(slot)).intValue());

				for (Integer tmp : events) {
					int roomIndex = getRoomOfEvent(tmp);
					System.out.println("tmp: " + tmp + " slot: " + slot + " roomIndex: " + roomIndex);
					System.out.println("roomCode: " + roomCode + "courseType: "	+ courseType);
					if (roomIndex < 0){
						throw new TimetableException("Room index is negative " + tmp);
					}
					Event event = Data.getInstance().getEventObject(tmp);
					Room room = Data.getInstance().getRoomList().get(roomIndex);
					System.out.println(room.getCode());
					System.out.println(event.getFaculty().getId());
					System.out.println(event.getCourse());
					System.out.println(slot);
					if(tableFor.equals("faculty")){
						eventType = Character.toString(TCRFoB.charAt(0)).trim();
						courseType = values[0].substring(2).trim();
						String[] batches = fac_batch.split(", ");
						ArrayList<String> batchList = new ArrayList<String>(Arrays.asList(batches)); 
						ArrayList<String> batchIds = new ArrayList<String>();
						for (Batch bth : event.getBatchList()){
							batchIds.add(bth.getId());
						}
						if(!event.getFaculty().getId().equals(code)){
							if(room.getCode().equals(roomCode)){
								System.out.println(batchIds);
								System.out.println(batchList);
								ArrayList<String> commonBatches = commonList(batchIds, batchList);
								System.out.println(commonBatches);
								if(commonBatches != null && commonBatches.size() > 0){
									if(isArrayListEqual(batchIds, batchList)){
										if(event.getCourse().equals(courseType)){
											continue;
										}
										else{
											System.out.println("false0");
											throw new TimetableException("Collisions are: \n" + 
													"Course: " + courseType + " and " + event.getCourse() +
													" Batches: " + batchIds + " and " + commonBatches);
										}
									}
								}
								System.out.println("false2");
								throw new TimetableException("Collisions are: \n" + 
										"Room: " + roomCode + " " + room.getCode() + "is not available." + 
										" and " + event.getFaculty().getId() + 
										" and " + code + " and " + slot + 
										" and " + courseType + " and " + event.getCourse() +  
										" and " + batchIds + " and " + batchList);
							}
						}
					}
					else if(tableFor.equals("batch")){
						if (event.getProfessor().getId().equals(fac_batch) ||
								room.getCode().equals(roomCode)) {
							if(event.getCourse().equals(courseType)){
								if (event.getProfessor().getId().equals(fac_batch) &&
										room.getCode().equals(roomCode)) {
									continue;
								}
								else{
									System.out.println("returning false0");
									throw new TimetableException("Collisions are: " + event.getProfessor().getId() +
											" and " + fac_batch + " and " + room.getCode() + 
											" and " + roomCode);
								}
							}
							else{
								System.out.println("returning false1");
								throw new TimetableException("Collisions are: " + event.getProfessor().getId() +
										" and " + fac_batch + " and " + room.getCode() + 
										" and " + roomCode + " and " + event.getCourse() +
										" and " + courseType);
							}
						}
					}
				}
			}
		return true;
	}*/

	protected int numEventsInSlot(int timeSlotindex) {
		if (timeSlotindex < 0 || timeSlotindex > numSlots)
			return 0;
		int slotNum = slotsOrder[timeSlotindex];
		return eventsInSlot[slotNum].size()
		+ ((null != parentTimetable) ? parentTimetable
				.numEventsInSlot(timeSlotindex) : 0);
	}

	/**
	 * Find if a given time-slot timeslotIndex in current timetable or parent
	 * timetable has an event scheduled that conflicts with given event
	 * eventIndex
	 * 
	 * @param timeslotIndex
	 * @param eventIndex
	 * @return
	 */
	protected boolean conflictsOnSlot(int timeslotIndex, int eventIndex) {
		int timeSlotNum = slotsOrder[timeslotIndex];

		// Check for conflicts with current timetable
		ArrayList<Integer> currentEvents = eventsInSlot[timeSlotNum];
		if (null != currentEvents)
			for (Integer tmpEvent : currentEvents) {
				if (eventsConflict(tmpEvent, eventIndex)) 
					return true;
			}

		// check for conflicts with parent timetable
		if (null != parentTimetable) {
			if (parentTimetable.conflictsOnSlot(timeslotIndex, eventIndex))
				return true;
		}
		return false;
	}

	/**
	 * check if an event of same course and type is already scheduled on same
	 * day
	 * 
	 * @param slotIndex
	 * @param eventIndex
	 * @return
	 * @throws TimetableException
	 */
	protected boolean conflictsOnDay(int slotIndex, int eventIndex)
	throws TimetableException {
		if (slotIndex < 0 || eventIndex < 0)
			throw new TimetableException(
					"Invalid values of slotIndex and eventIndex" + slotIndex
					+ ":" + eventIndex);
		Event event = allEvents.get(eventIndex);
		Course course = allCourses.get(eventToCourse[eventIndex]);
		ArrayList<Integer> eventsOfSameCourse = courseToEvents
		.get(eventToCourse[eventIndex]);
		int events_of_same_nature = 0;
		for (Integer tmp : eventsOfSameCourse) {
			Event tmpEvent = allEvents.get(tmp);
			if (slotOfEvent[tmp] < 0 || event.getType() != tmpEvent.getType())
				continue; // Not scheduled yet or of different type
			if (false == haveSameDay(findIndexOfSlot(slotOfEvent[tmp]),
					slotIndex))
				continue; // Not scheduled on same day
			events_of_same_nature++;
		}
		if (event.getType() == LECTURE) {
			if (course.getMaxLecturesPerDay() > events_of_same_nature)
				return false;
		} else if (event.getType() == TUTORIAL) {
			if (course.getMaxTutorialsPerDay() > events_of_same_nature)
				return false;
		}
		return true;
	}

	protected boolean eventsConflict(int event1, int event2) {
		if (event1 < 0 || event2 < 0)
			return false; /* Exception */
		return eventsMatrix[event1][event2];
	}

	protected void removeEventFromUnassigned(Integer currE) {
		unassignedEvents.remove(currE);
	}

	protected void setEventsAndRoomsInSlot(int slotIndex,
			ArrayList<Integer> eventsWithR, ArrayList<Integer> busyRooms)
	throws TimetableException {
		if (slotIndex < 0 || null == eventsWithR || null == busyRooms)
			throw new TimetableException(
			"Eroor during assigning events and rooms to slot");
		if (eventsWithR.size() != busyRooms.size())
			throw new TimetableException(
			"Number of occupied events and rooms are not equal");
		int slotNumber = slotsOrder[slotIndex];
		eventsInSlot[slotNumber] = eventsWithR;
		roomsInSlot[slotNumber] = busyRooms;

	}

	protected void addEventToUnassigned(int curr) throws TimetableException {
		if(null == unassignedEvents) throw new TimetableException("Null list in unassigned");
		unassignedEvents.add(curr);
		slotOfEvent[curr] = NIL;
		roomOfEvent[curr] = NIL;

	}

	protected void addEventsToUnassigned(ArrayList<Integer> events) throws TimetableException {
		if(null == events || null == unassignedEvents)
			throw new TimetableException("Exception during adding unassigned events");
		for(Integer event:events){
			slotOfEvent[event] = NIL;
			roomOfEvent[event] = NIL;
		}

		unassignedEvents.addAll(events);

	}

	protected int findIndexOfSlot(int slot) {
		if (slot < 0)
			return slot;
		for (int i = 0; i < numSlots; i++)
			if (slotsOrder[i] == slot)
				return i;
		return NIL;
	}

	protected void addEventAndRoomToSlot(int slotIndex, int currE, int room)
	throws TimetableException {
		if (slotIndex < 0 || currE < 0 || room < 0)
			throw new TimetableException(
			"Error in adding room and event to slot");
		addEventToSlot(slotIndex, currE);
		roomsInSlot[slotsOrder[slotIndex]].add(room);
		roomOfEvent[currE] = room;
	}

	protected void addEventToSlot(int index, int curr) {
		eventsInSlot[slotsOrder[index]].add(curr);
		slotOfEvent[curr] = slotsOrder[index];
	}

	protected int removeEventFromSlot(int slotIndex, int eventIndex) {
		int room = roomOfEvent[eventIndex];
		int slot = slotsOrder[slotIndex];
		roomsInSlot[slot].remove((Integer) room);
		roomOfEvent[eventIndex] = NIL;
		eventsInSlot[slot].remove((Integer) eventIndex);
		slotOfEvent[eventIndex] = NIL;
		return room;
	}

	protected boolean haveSameDay(int slotIndex1, Integer slotIndex2) {
		return (slotIndex1 / Constants.SLOTS_IN_DAY == slotIndex2 / Constants.SLOTS_IN_DAY);
	}

	public void saveTable(String tableId, String username, String department, String path, ArrayList<Event> events) {
		System.out.println("Saving total: " + events.size());
		int size = events.size();
		//for(int i = 0; i < size; i++) {
			//Event event = events.get(i);
			try {
				FileOutputStream fout = new FileOutputStream(path + "/" + tableId + ".dat");
				ObjectOutputStream oos = new ObjectOutputStream(fout);
				oos.writeObject(events);
				oos.close();
			} catch (Exception e) { 
				e.printStackTrace(); 
			}
		//}
		System.out.println("Successfully saved events");
	}

	public String getPath(String tableId) {
		String queryString = "select path from table_id where id=" + tableId;
		String path = null;
		if(null == tableId || tableId.equals("")){
			System.out.println("Empty table id passed in getPath");
			return null;
		}
		try{
			Connection con = Torque.getConnection();
			if(null == con) {
				System.out.println("Null Connection given in loadFromFile");
				return null;
			}
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(queryString);
			rs.next();
			path = rs.getString(1).trim();
			System.out.println("Load from file path: " + path);
		} catch (Exception e) {
			System.out.println("Error while fetching path: " + e);
			return null;
		}
		return path;
	}

	public ArrayList<Event> loadFromFile(String tableId) {
		String path = null;
		path = getPath(tableId);
		if(path == null || path.equals("")) {
			System.out.println("Null path returned in loadFromFile");
			return null;
		}
		path += "/" + tableId + ".dat";
		System.out.println("Loading from file: " + path);
		ArrayList<Event> events = null;
		try {
			FileInputStream fin = new FileInputStream(path);
			ObjectInputStream ois = new ObjectInputStream(fin);
			events = (ArrayList<Event>) ois.readObject();
			ois.close();
		} catch (Exception e) { 
			e.printStackTrace(); 
		}
		if(null == events) {
			System.out.println("Events not loaded from file: " + path);
			return null;
		}
		System.out.println("Successfully loaded from file. Size: " + events.size());
		return events;
	}

	public String newInsert(String username, String department, String path) throws Exception {
		TableId t = new TableId();
		t.setPath(path);
		t.setUser(username);
		t.setDate(new Date());
		t.setDepartment(department);
		t.save();
		return Integer.toString(t.getId());
	}

	public void newInsertIntoDB(ArrayList<Event> events) throws Exception {
		int count = 0;
		BasePeer.executeStatement("delete from " + EventsPeer.TABLE_NAME);
		Events t = new Events();
		for(Event e: events) {
			t = new Events();
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			ObjectOutputStream oos = new ObjectOutputStream(bos);
			Object eventObject = (Object)e;

			oos.writeObject(eventObject);
			oos.flush();
			oos.close();
			bos.close();

			byte[] data = bos.toByteArray();
			t.setEvent(data);
			t.save();
			count++;
		}
		System.out.println("Inserted " + count + " events in DB.");
	}

	/*
	public void insertIntoDB(Connection conn, ArrayList<Event> events) throws TimetableException {
		System.out.println("!!!!!!!!!!!!!!  Inside insertIntoDB   !!!!!!!!!!!!!!!");
		String sql = "Delete from timetable;";
		try {
			PreparedStatement st = conn.prepareStatement(sql);
			st.execute();
			st.close();
			System.out.println();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new TimetableException("Error while deleting data from DB timetable table");
		} 
		for(Event curr : events) {
			sql = "INSERT INTO timetable(course_code,slot,day,class_type," +
			"room_code) "
			+ " Values(?,?,?,?,?)";
			try {
				PreparedStatement ps=null;

				ByteArrayOutputStream bos = new ByteArrayOutputStream();
				ObjectOutputStream oos = new ObjectOutputStream(bos);
				Object eventObject = (Object)curr;

				oos.writeObject(eventObject);
				oos.flush();
				oos.close();
				bos.close();

				byte[] data = bos.toByteArray();

				sql="insert into timetable (event) values(?)";
				ps=conn.prepareStatement(sql);
				ps.setObject(1, data);
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException ioe) {
				ioe.printStackTrace();
			}
		}
		System.out.println("Inserted " + events.size() + " events in DB.");
	}
	*/

	@SuppressWarnings("unchecked")
	public ArrayList<Event> loadFromDB() 
	throws TimetableException {
		System.out.println("Entering loadFromDB");
		ArrayList<Event> events = new ArrayList<Event>();
		int count = 0;
		try {
			System.out.println("Entering try");
			Criteria crit = new Criteria();
			List v = BasePeer.executeQuery("select event from " + EventsPeer.TABLE_NAME);
			//System.out.println("got list l: " + l.size());
			//List<Event> v = EventsPeer.doSelect(crit);
			System.out.println("Do Select1: " + v.size());
			Iterator<Event> i = v.iterator();
			System.out.println("Do Select2: " + v.size());
			int j = 0;
			while (i.hasNext()) {
				System.out.println("here: " + i.next().getClass().getName());
				Event e = (Event)(i.next());
				System.out.println("here too: " + j);
				events.add(e);
				System.out.println("here too3: " + j++);
			}
			System.out.println("Leaving try");
		} catch (Exception e) {
			System.out.println("Error while loading events: " + e);
			e.printStackTrace();
		}
		System.out.println("Loaded " + count + " events from DB.");
		return events;
	}


	public void displayPenalty() {
		System.out.println("Total Penalty : " + totalPenalty + "\t");
		System.out.println("Total Number of unassigned events : " + unassignedEvents.size());
		System.out.println("Unassigned Events : ");
		for (Integer tmp : unassignedEvents) {
			Event event = allEvents.get(tmp);
			System.out.print("{ " + CLASS_CODES[event.getType()] 
			                                    + event.getCourse().getCourseCode() + " "  
			                                    + event.getProfessor().getName()
			                                    + " }, ");
			System.out.println();
		}
	}

	public void setEventData() throws TimetableException {
		Data data = Data.getInstance();
		int eventId;
		Event event;
		ArrayList<Event> fixedEvents = new ArrayList<Event>();
		ArrayList<Event> otherEvents = new ArrayList<Event>();
		ArrayList<Event> allEvents = new ArrayList<Event>();
		ArrayList<Integer> fixedEventInt = data.getFixedEvents();
		/*
		 * Pretty buggy functions: getEventsWithOneSlot and getEventsWithMultiSlots
		 * If you call them more than once, total number of events gets increased.
		 * They keep duplicating multi-slot events.
		 * So never call them again in this instance.
		 */
		ArrayList<Integer> otherEventInt = data.getEventsWithOneSlot();
		for(int i = Constants.MAX_SLOTS_FOR_EVENT; i >= 2;i--) {
			otherEventInt.addAll(data.getEventsWithMultiSlots(i));
		}
		for(int i = 0; i < fixedEventInt.size(); i++) {
			eventId = fixedEventInt.get(i);
			Event e = data.getEventObject(eventId);
			event = new Event(e);
			event.setId(eventId);
			fixedEvents.add(event);
		}
		for(int i = 0; i < otherEventInt.size(); i++) {
			eventId = otherEventInt.get(i);
			Event e = data.getEventObject(eventId);
			event = new Event(e);
			event.setId(eventId);
			otherEvents.add(event);
		}
		for(int i = 0; i < numSlots; i++) {
			ArrayList<Integer> eventsInSlot = getEventsInSlot(i);
			for(int j = 0; j < eventsInSlot.size(); j++) {
				eventId = eventsInSlot.get(j);
				event = Methods.getById(eventId, otherEvents);
				otherEvents.remove(event);
				int roomIndex = getRoomOfEvent(eventId);
				if (roomIndex < 0)
					throw new TimetableException("Room index is negative " + eventId);
				Room room = Data.getInstance().getRoomList().get(roomIndex);
				event.setSlot(i);
				event.setRoom(room);
				otherEvents.add(event);
			}
		}
		allEvents.addAll(otherEvents);
		allEvents.addAll(fixedEvents);
		this.allEvents = new ArrayList<Event>();
		this.allEvents = allEvents;
		data.setEventList(allEvents);

		System.out.println(this.allEvents.size());
		System.out.println(allEvents.size());
		System.out.println(otherEvents.size());
		System.out.println(fixedEvents.size());
	}

	public void saveBestTimetable(){
		//Criteria c =new Criteria();
	}

	public int getRoomOfEvent(Integer event) {
		return roomOfEvent[event];
	}
}
