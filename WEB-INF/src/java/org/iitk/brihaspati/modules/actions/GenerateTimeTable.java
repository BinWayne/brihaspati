package org.iitk.brihaspati.modules.actions;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;

import org.apache.turbine.modules.actions.VelocityAction;
import org.apache.turbine.util.RunData;
import org.apache.velocity.context.Context;
import org.iitk.brihaspati.modules.screens.call.timetable.*;

import com.lowagie.text.DocumentException;
 
public class GenerateTimeTable extends VelocityAction {
	
	static STimetable best;
	static SingleSlotTimetable sST;
	static MultiSlotTimetable mST;
	static STimetable univT;
	PDFGenerator reportGen;
	
	public GenerateTimeTable() {
		initialize();
		System.out.println("Leaving constructor GenerateTimeTable");
	}
	
	public static void initialize() {
		try {
			best = new STimetable();
			//univT = new STimetable();
			//univT.loadFromDB(Data.getConnection(), Data.getInstance().getFixedEvents());
//			Data.getInstance().reloadData();
			STimetable parent = null;
			for(int i = Constants.MAX_SLOTS_FOR_EVENT; i >= 2;i--) {
				mST = new MultiSlotTimetable(i);
				mST.setParentTimeTable(parent);
				mST.generateFirstTimetable();
				parent = mST.mergeWithParent();
			}
			sST = new SingleSlotTimetable();
			sST.setParentTimeTable(parent);
			sST.generateFirstTimetable();
			SingleSlotTimetable mySST = new SingleSlotTimetable(sST);
			best = mySST.mergeWithParent();
		} catch (TimetableException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
	
	public static void searchBestTimetable() throws TimetableException {
		if(null == best) initialize();
		SingleSlotTimetable tmp = new SingleSlotTimetable(sST);
		long start  = System.currentTimeMillis();
		// Swap slots
		for(int i=1;i<100000;i++) {
			tmp.sequenceSlots();
			if(tmp.isBetterThan(sST)) {
				sST = new SingleSlotTimetable(tmp);
				best = new SingleSlotTimetable(tmp).mergeWithParent();
			}
		}
		System.out.println("After Sequence slots ");
		best.displayPenalty();
		System.out.println("Total time taken : " + (System.currentTimeMillis() - start)/60 + " seconds\n");
		start = System.currentTimeMillis();

//		 Exchange events between slots 
		tmp = new SingleSlotTimetable(sST); 
		for(int i=1;i < 100000;i++) {
			tmp.shuffleEvents();
			if(tmp.isBetterThan(sST)) {
				sST = new SingleSlotTimetable(tmp);
				best = new SingleSlotTimetable(tmp).mergeWithParent();
			}
		}
		
		System.out.println("After shuffle events");
		best.displayPenalty();
		System.out.println("Total time taken : " + (System.currentTimeMillis() - start)/60 + " seconds\n");
		start = System.currentTimeMillis();
		
		/*// Swap slots
		for(int i=1;i<100000;i++) {
			tmp.sequenceSlots();
			if(tmp.isBetterThan(sST)) {
				sST = new SingleSlotTimetable(tmp);
				best = new SingleSlotTimetable(tmp).mergeWithParent();
			}
		}
		
		System.out.println("After again swapping slots");
		best.displayPenalty();
		System.out.println("Total time taken : " + (System.currentTimeMillis() - start)/60 + " seconds\n");
		start = System.currentTimeMillis();
		
		//Exchange rooms
		for(int i=1;i<100000;i++) {
			tmp.exchangeRooms();
			if(tmp.isBetterThan(sST)) {
				sST = new SingleSlotTimetable(tmp);
				best = new SingleSlotTimetable(tmp).mergeWithParent();
			}
		}
		
		System.out.println("After rooms exchange");
		best.displayPenalty();
		System.out.println("Total time taken : " + (System.currentTimeMillis() - start)/60 + " seconds\n");
		start = System.currentTimeMillis();*/
		
	}
	
	public STimetable getBest() {
		return best;
	}
	
	public void doGenerate(RunData data, Context context) {
		String msg = "There was an error in generating timetables.<br/>";
		boolean error = false;
		String path = data.getServletContext().getRealPath("/reports/");
		try {
			/*
			 * This line is important. Somehow some events get duplicated
			 * which results in error. This happens when we call doGenerate 
			 * with recompiling.
			 */
			Data.getInstance().reloadData();
			initialize();
//			best.display();
			best.displayPenalty();
			System.out.println("\n");
			searchBestTimetable();
			best.setEventData();
			best.newInsertIntoDB(Data.getInstance().getEventList());
//			best.saveBestTimetable();
//			System.out.println(Test.counter);
//			best.displayPenalty();
		} catch (TimetableException e) {
			e.printStackTrace();
			msg += e.getMessage();
		} catch (DocumentException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*
		 * This is in separate try/catch as it throws error messages 
		 * that need to be shown to the user.
		 */
		try {
			reportGen = new PDFGenerator(path);
			if(!error) {
				msg = "Success";
			}
		} catch(TimetableException e) {
			if(error) {
				msg += "<br/>" + e.getMessage();
			}
			else {
				msg = "<br/>" + e.getMessage();
			}
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		context.put("msg", msg);
	}

	public void doCommit(RunData data, Context context) {
		String msg = "All changes were made successfully.";
		String eventSlotMap = data.getRequest().getParameter("eventSlotMap");
		String path = data.getRequest().getParameter("path");
		Hashtable<Integer, Integer> eventSlotHash = Methods.getEventSlotHash(eventSlotMap);
		System.out.println(eventSlotHash);
		ArrayList<Event> eventsInDB = new ArrayList<Event>();
		Event event;
		try {
			eventsInDB = best.loadFromDB();
			Set<Integer> eventIds = eventSlotHash.keySet();
			Iterator<Integer> iter = eventIds.iterator();
			while(iter.hasNext()) {
				int id = iter.next();
				event = Methods.getById(id, eventsInDB);
				eventsInDB.remove(event);
				event.setSlot(eventSlotHash.get(id));
				eventsInDB.add(event);
			}
			best.newInsertIntoDB(eventsInDB);
			path = data.getServletContext().getRealPath("/reports/");
			PDFGenerator pdfg = new PDFGenerator();
			pdfg.generateFromDB(path, eventsInDB);
		} catch (TimetableException e1) {
			msg = "There was some error in processing you request.";
			e1.printStackTrace();
			System.out.println(e1.getMessage());
		} catch (Exception e) {
			msg = "There was some error in processing you request.";
			e.printStackTrace();
		}
		context.put("msg", msg);
		context.put("commit", "commit");
		context.put("errorMsgs", Methods.getErrorMsgs());
	}
	
	public void doVerification(RunData data, Context context) {
		boolean valid = false;
		String msg = "There was error in processing your request.";
		String eventSlotMap = data.getRequest().getParameter("eventSlotMap");
		Hashtable<Integer, Integer> eventSlotHash = Methods.getEventSlotHash(eventSlotMap);
		ArrayList<Event> eventsInDB = new ArrayList<Event>();
		ArrayList<Event> eventsInNewTimetable = new ArrayList<Event>();
		ArrayList<Event> eventsInOldTimetable = new ArrayList<Event>();
		ArrayList<Event> eventsToVerify = new ArrayList<Event>();
		Event event = null;
		eventSlotMap = null;

		try {
			eventsInDB = best.loadFromDB();
		} catch (TimetableException e1) {
			System.out.println(e1.getMessage());
		}
		
		try{
			for(int j = 0; j < eventsInDB.size(); j++) {
				event = eventsInDB.get(j);
				int id = event.getId();
				if(eventSlotHash.containsKey(id)) {
					int oldSlot = event.getSlot();
					int newSlot = eventSlotHash.get(id);
					eventsInOldTimetable.add(event);
					Event e = new Event(event);
					e.setSlot(newSlot);
					eventsInNewTimetable.add(e);
					if(newSlot != oldSlot) {
						eventsToVerify.add(e);
						System.out.println("Slots for eventId:" + id +" do not match. " +
								"Old slot:" + oldSlot + " and New slot:" + newSlot);
					}
				}
			}
			if(eventsToVerify.size() > 0) {
				valid = Methods.checkAvailability(eventsToVerify, eventsInDB, eventsInNewTimetable, eventsInOldTimetable);
				if(valid) {
					eventSlotMap = Methods.getFormattedData(eventsToVerify);
				}
			}
			else {
				throw new TimetableException("You made no changes to the timetable.");
			}
		} catch (TimetableException e) {
			valid = false;
			msg = e.getMessage();
			System.out.println(msg);
		} catch (Exception e) {
			System.out.println("error while validating changed timetable");
			e.printStackTrace();
		}
		System.out.println("Exiting validation: " + valid);
		context.put("valid", Boolean.toString(valid));
		context.put("eventSlotMap", eventSlotMap);
		context.put("msg", msg);
	}

	static public void main(String args[]) {
		try {
			System.out.println("Before sequencing slots");
			initialize();
//			best.display();
			best.displayPenalty();
//			System.out.println("\n");
			searchBestTimetable();
//			best = new STimetable();
			try {
				ArrayList<Integer> eventList = Data.getInstance().getEventsWithOneSlot();
				for(int i = Constants.MAX_SLOTS_FOR_EVENT; i >= 2;i--) {
					eventList.addAll(Data.getInstance().getEventsWithMultiSlots(i));
				}
				
//				best.loadFromDB(Data.getConnection(), eventList);
				best.newInsertIntoDB(Data.getInstance().getEventList());
				String path = "E:\\course_timetables\\";
				PDFGenerator reportGen = new PDFGenerator();
				reportGen.publishAllBatchesTimetables(path);
				reportGen.publishAllFacultyTimetables(path);
			} catch (Exception e) {
				e.printStackTrace();
			}
//			System.out.println(Test.counter);
//			best.displayPenalty();
		} catch (TimetableException e) {
			e.printStackTrace();
		}
	}

	//@Override
	public void doPerform(RunData arg0, Context arg1) {
	}

	
}
