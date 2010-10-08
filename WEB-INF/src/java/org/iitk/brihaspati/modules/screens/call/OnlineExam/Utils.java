package org.iitk.brihaspati.modules.screens.call.OnlineExam;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.iitk.brihaspati.om.Answer;

public class Utils {
	@SuppressWarnings("unchecked")
	public static ArrayList getArrayList(List v) {
		ArrayList al = new ArrayList();
		Iterator i = v.iterator();
		while(i.hasNext()) {
			al.add(i.next());
		}
		return al;
	}
	public static boolean isAnswered(ArrayList<Answer> answered, int ques_id) {
		for(int i = 0; i < answered.size(); i++) {
			if(ques_id == answered.get(i).getQuestionId()) {
				return true;
			}
		}
		return false;
	}
}
