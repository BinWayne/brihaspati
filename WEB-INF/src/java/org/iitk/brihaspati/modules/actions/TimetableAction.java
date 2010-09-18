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

import org.iitk.brihaspati.modules.utils.MultilingualUtil;
import org.iitk.brihaspati.modules.screens.call.timetable.TimetableException;

public class TimetableAction extends SecureAction
{
	private Log log = LogFactory.getLog(this.getClass());
	String xmlFile=new String();
	
	public void doUpload(RunData data, Context context) throws Exception
	{
		FileItem fileItem = data.getParameters().getFileItem("file");
		String fileName = fixFileName( fileItem.getName() );
		
		StringTokenizer st=new StringTokenizer(fileName,".");
		String file = st.nextToken();
		String fileExtension = st.nextToken();
		if(!fileExtension.equals("xls")) {
			context.put("msg", "Only xls files are supported currently.");
			return;
		}
		

		User user = data.getUser();
	    String username = user.getName();
		Date date = new Date();
		String department = (String)data.getSession().getAttribute("department");
		String path = "/reports/" + username + "/" + department + "/uploads";
		
		String filePath=data.getServletContext().getRealPath(path)+ "/" + file + "~"
					    + date.getDate() + "-" + date.getMonth() + "-" + new String("" + (date.getYear() + 1900))
						+ " " + date.getHours() + ":" + date.getMinutes()+ ":" + date.getSeconds();
		System.out.println("Filepath for uploaded file is " + filePath);

		String xlsFile = filePath + "." + fileExtension;
		fileItem.write(new File(xlsFile));
		System.out.println(xlsFile + " file has been uploaded.");

		/* Generate xml file of the uploaded xls file at same place */
		
		try {
			System.out.println("Generating xml file for " + fileName);
			
			xmlFile = filePath + ".xml";
			System.out.println("xmlfile is : " + xmlFile);
			
			generateXml(xlsFile);
			System.out.println("Generated XML successfully.");
		} catch(Throwable t) {
			t.printStackTrace();
			System.out.println("SEVERE: Error in generating xml file");
			context.put("msg", "Error in uploaded file. Please review it.");
			return;
		}
		
		doInit(data, context);
		return;
	}
	
	public void generateXml(String xlsFile) throws BiffException, IOException {
		String encoding = "UTF8";
		boolean formatInfo = false;

		String file=xlsFile;
		Workbook w = Workbook.getWorkbook(new File(file));
		new XML(w,System.out, encoding, formatInfo, xmlFile);
	}
	
	public void doSetdepartment( RunData data, Context context) throws Exception
	{
		String department = data.getParameters().getString("department", "");
		data.getSession().setAttribute("department", department);
		
		System.out.println("Department is " + department);
		log.info("Department is " + department);
		
		getUploadedFiles(data, department);
		return;
	}
	
	public void doInit( RunData data, Context context) throws Exception
	{
		String department = (String)data.getSession().getAttribute("department");
		if(department == null)
			return;
		
		getUploadedFiles(data, department);
		return;
	}


	public void getUploadedFiles(RunData data, String department) throws Exception
	{
		User user = data.getUser();
		String username = user.getName();
		
		String path = "/reports/" + username + "/" + department + "/uploads";
		String filesPath=data.getServletContext().getRealPath(path)+ "/";
		
		checkDirectoryPath(filesPath);
		
		File directory = new File(filesPath);
		File[] files = directory.listFiles();
		Hashtable allFiles = new Hashtable();
		Hashtable xmlFiles = new Hashtable();
		
		for (int index = 0; index < files.length; index++) {
			String fileName = files[index].toString();
				
			if(fileName.endsWith("xls")) {
				StringTokenizer st = new StringTokenizer(fileName, "/");
				while(st.hasMoreElements())
					fileName = st.nextToken();
				
				String temp = fileName.substring(0, fileName.length() - 4) + ".xml";
				fileName = fileName.substring(0, fileName.length() - 4);
				StringTokenizer st2 = new StringTokenizer(fileName, "~");
				
				String file = st2.nextToken();
				String date = st2.nextToken();
				
				System.out.println(file + " | " + date + " | " + temp);
				allFiles.put(date, file);
				xmlFiles.put(date, temp);
			}
		}
		
		data.getSession().setAttribute("xmlFiles", xmlFiles);
		data.getSession().setAttribute("allFiles", allFiles);
		return;
	}
	
	/*
	 * Create directory for uploads if it doesn't exist.
	 */
	private boolean checkDirectoryPath(String path) throws TimetableException {
		String rootPath = path;
		boolean created = false;
		File root = new File(rootPath);
		created = createDirectory(root);
		return created;
	}
	
	private boolean createDirectory(File file) throws TimetableException {
		String message = "Error while creating directory: ";
		boolean created = false;
		if(!file.isDirectory()) {
			if(!file.mkdirs()) {
				throw new TimetableException(message + file.toString());
			}
			created = true;
		}
		return created;
	}
	
	/*
	 * Fix file name if uploaded from a windows client
	 */
	public static String fixFileName(String longFile)
	{
		int loc = longFile.lastIndexOf("\\");
		return longFile.substring( (loc+1), longFile.length() );
	}
	
	/*
	 * Default action to perform if the specified action cannot be executed.
	 */
	public void doPerform( RunData data,Context context ) throws Exception
	{
		String LangFile=data.getUser().getTemp("LangFile").toString();  
		String msg=MultilingualUtil.ConvertedString("action_msg",LangFile);
		String action=data.getParameters().getString("actionName","");
		
		if(action.equals("eventSubmit_doUpload")) {
			doUpload(data, context);
		}
		else if(action.equals("eventSubmit_doSetdepartment"))
		{
			doSetdepartment(data, context);
		}
		else
		{
			data.setMessage(msg);
		}	
	}
}
