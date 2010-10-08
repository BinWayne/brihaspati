package org.iitk.brihaspati.modules.actions;

import java.io.*;
import java.util.*;

import jxl.Workbook;
import jxl.demo.XML;
import jxl.read.biff.BiffException;

import org.apache.velocity.context.Context;
import org.apache.turbine.om.security.User;
import org.apache.turbine.util.RunData;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.logging.*;
import org.iitk.brihaspati.modules.screens.call.OnlineExam.*;


import org.iitk.brihaspati.modules.utils.MultilingualUtil;
//import org.iitk.brihaspati.modules.screens.call.timetable.TimetableException;
//import org.iitk.brihaspati.modules.screens.call.timetable.Methods;
import org.iitk.brihaspati.om.OptionDesc;
import org.iitk.brihaspati.om.Question;

public class OnlineExamAction extends SecureAction
{
	private Log log = LogFactory.getLog(this.getClass());

	public void doLogin(RunData data, Context context) throws Exception
	{
		String username = data.getParameters().getString("username", "");
		String passwd = data.getParameters().getString("passwd", "");
		System.out.println("getlost"+username+"passwd"+passwd);
		data.getSession().setAttribute("username", username);
		data.getSession().setAttribute("passwd",passwd);
	}

	public void doSetqtype( RunData data, Context context) throws Exception
	{
		String qtype = data.getParameters().getString("qtype", "");

		if(qtype == null)
			return;
		System.out.println("Question Type="+qtype);

		data.getSession().setAttribute("qtype", qtype);

	}

	public void doInputquestion( RunData data, Context context) throws Exception
	{
		System.out.println("how are you?");

		String ques = data.getParameters().getString("ques", "");
		String ans = data.getParameters().getString("c_ans", "");
		String noOfOptions = data.getParameters().getString("noOfOptions", "");
		String op1 = data.getParameters().getString("op1", "");
		String op2 = data.getParameters().getString("op2", "");
		String examId = data.getParameters().getString("exam_id", "");

		System.out.println("examid="+examId);
		System.out.println("all working");

		int noOfOp=Integer.parseInt(noOfOptions);
		int exam_id= Integer.parseInt(examId);


		ArrayList<String> options = new ArrayList<String>();		
		System.out.println("options="+options);

		for(int i=0;i<2;i++)
		{
			if(i==0)
				options.add(i,op1);
			else
				options.add(i,op2);
		}


		
		//System.out.println("before inserting");
		DBConnect.insertQuestion(ques, noOfOp, "single", exam_id, options, ans);
		System.out.println("inserted yay!!");
		context.put("msg", "success");
	}
	public void doInputexamdetails( RunData data, Context context) throws Exception
	{
		String exam_title = data.getParameters().getString("title", "");
		String instructions = data.getParameters().getString("inst", "");
		String uploaded_by = data.getParameters().getString("user" , "");

		System.out.println("Input Exam Details");
		DBConnect db=new DBConnect();
		int exam_id=0;
		exam_id = db.insertExam(exam_title,instructions, uploaded_by, new Date());
		System.out.println("EXAM ID="+exam_id);

		context.put("exam_id",exam_id);
	}
	
	public void doStartexam( RunData data, Context context) throws Exception
	{
		int exam_id = data.getParameters().getInt("exam_id", 0);
		String username = data.getUser().getName();

		if(exam_id <= 0 || username == null || username.equals("")) {
			System.out.println("Cheating attempt");
		}
		
		data.getSession().setAttribute("exam_id", exam_id);
		Question next_q = DBConnect.getNextQuestion(exam_id, username);
		context.put("next_ques", next_q);
		context.put("options", DBConnect.getOptionsByQuestion(next_q.getQuestionId()));
		System.out.println("Successfully Started Exam");
	}
	 
	/*
	public void doSelectoptions( RunData data, Context context) throws Exception
	{
		System.out.println("here");
		DBConnect db = new DBConnect();
		int question_id = data.getParameters().getInt("next_qid");
		System.out.println("NEXT quesid="+question_id);
		ArrayList<OptionDesc> options = db.getOptionsByQuestion(question_id);

		System.out.println("Setting Options ="+options+"for question id :"+question_id);
		context.put("options", options);
	}
	*/
	public void doNextques( RunData data, Context context) throws Exception {
		String username = data.getUser().getName();
		int exam_id = (Integer)data.getSession().getAttribute("exam_id");
		int ques_id = data.getParameters().getInt("current_ques",0);
		int option_id = data.getParameters().getInt("option",0);
		
		if(exam_id <= 0 || username == null || username.equals("")) {
			System.out.println("Cheating attempt");
		}
		DBConnect.saveAnswer(exam_id, ques_id, option_id, username);
		Question next_q = DBConnect.getNextQuestion(exam_id, username);
		context.put("next_ques", next_q);
		context.put("options", DBConnect.getOptionsByQuestion(next_q.getQuestionId()));
	}

}