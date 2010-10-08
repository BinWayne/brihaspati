package org.iitk.brihaspati.modules.screens.call.OnlineExam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Date;
import java.util.Random;
import java.io.*;

import org.apache.torque.Torque;
import org.apache.torque.TorqueException;
import org.apache.torque.util.BasePeer;
import org.apache.torque.util.Criteria;
import org.iitk.brihaspati.modules.actions.Question_Bank;
import org.iitk.brihaspati.om.*;

public class DBConnect implements Constants {

	public static int insertOption(String statement, int question_id, int correct_answer) 
	throws Exception {
		try {
			OptionDesc op = new OptionDesc();
			op.setQuestionId(question_id);
			op.setStatement(statement);
			op.setCorrectAnswer(correct_answer);
			op.save();
			return op.getOptionId();
		} catch(Exception e) {
			System.out.println("Error while inserting Option: " + e);
			throw e;
		}
	}

	public static int insertQuestion(String statement, int noOfOptions, String type, 
			int exam_id, ArrayList<String> options, String ans) throws Exception {
		try {
			System.out.println("final"+exam_id);
			Question ques = new Question();
			ques.setStatement(statement);
			ques.setNoOfOptions(noOfOptions);
			ques.setExamId(exam_id);
			ques.setType(type);
			ques.save();
			
			int qid=ques.getQuestionId();
			
			OptionDesc op = new OptionDesc();
			op.setStatement(options.get(0));
			op.setQuestionId(qid);
			
			if(options.get(0).equals(ans))
				op.setCorrectAnswer(1);
			else
				op.setCorrectAnswer(0);
			op.save();
			
			OptionDesc op1= new OptionDesc();

			op1.setStatement(options.get(1));
			op1.setQuestionId(qid);
			if(options.get(1).equals(ans))
				op1.setCorrectAnswer(1);
			else
				op1.setCorrectAnswer(0);
			op1.save();
						
			return qid;
		} catch(Exception e) {
			System.out.println("Error while inserting Question: " + e);
			throw e;
		}
	}

	public static int insertExam(String exam_title, String instructions, String uploaded_by,
			Date test_time) throws Exception	{
		try {
			Exam ex = new Exam();
			ex.setTitle(exam_title);
			ex.setInstructions(instructions);
			ex.setUploadedBy(uploaded_by);
			ex.setDateUploaded(new Date());
			ex.setTimeOfExam(test_time);
			ex.save();
			return ex.getExamId();
		} catch(Exception e) {
			System.out.println("Error while inserting Exam: " + e);
			return -1;
		}
	}

	@SuppressWarnings("unchecked")
	public static ArrayList<Question> selectQuestionsByExam(int exam_id) throws Exception {
		try {
			Criteria crit = new Criteria();
			crit.add(QuestionPeer.EXAM_ID, exam_id);
			List<Question> v = QuestionPeer.doSelect(crit);
			return Utils.getArrayList(v);
		} catch (Exception e) {
			System.out.println("Error while selecting questions from exam id: " + e);
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public static ArrayList<OptionDesc> getOptionsByQuestion(int question_id) throws Exception {
		try {
			Criteria crit = new Criteria();
			crit.add(OptionDescPeer.QUESTION_ID, question_id);
			List<OptionDesc> v = OptionDescPeer.doSelect(crit);
			return Utils.getArrayList(v);
		} catch (Exception e) {
			System.out.println("Error while selecting options from question id: " + e);
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public static Question getNextQuestion(int exam_id, String username) throws Exception {
		Criteria crit = new Criteria();
		crit.add(AnswerPeer.USERNAME, username);
		List<Answer> v = AnswerPeer.doSelect(crit);
		ArrayList<Answer> answered = Utils.getArrayList(v);
		ArrayList<Question> total = selectQuestionsByExam(exam_id);
		ArrayList<Question> not_answered = new ArrayList<Question>();
		for(Question q: total) {
			if(!Utils.isAnswered(answered, q.getQuestionId())) {
				not_answered.add(q);
			}
		}
		if(not_answered.size() == 0) {
			return null;
		}
		Random rand = new Random();

		int t = rand.nextInt(not_answered.size());
		return not_answered.get(t);
	}
	
	public static void saveAnswer(int exam_id, int ques_id, int option_id, 
			String username) throws Exception {
		Answer ans = new Answer();
		ans.setExamId(exam_id);
		ans.setQuestionId(ques_id);
		ans.setOptionId(option_id);
		ans.setUsername(username);
		ans.save();
	}
}

