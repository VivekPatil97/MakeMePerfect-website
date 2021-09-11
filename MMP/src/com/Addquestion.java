package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Addquestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String cname,question,optionA,optionB,optionC,optionD,answer;
	int cid;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cname=request.getParameter("cour");
		question=request.getParameter("question");
		optionA=request.getParameter("optionA");
		optionB=request.getParameter("optionB");
		optionC=request.getParameter("optionC");
		optionD=request.getParameter("optionD");
		answer=request.getParameter("answer");
		if(cname.equals("c++")){cid=1;}
		if(cname.equals("java")){cid=2;}
		if(cname.equals("php")){cid=3;}
		if(cname.equals("javascript")){cid=4;}
		if(cname.equals("phython")){cid=5;}
		if(cname.equals("c sharp")){cid=6;}
		try{           

				   conn=DBCon.db();
			       PreparedStatement pst = conn.prepareStatement("INSERT INTO `questions`(C_id,question,optionA,optionB,optionC,optionD,answer) VALUES ('"+cid+"','"+question+"','"+optionA+"','"+optionB+"','"+optionC+"','"+optionD+"','"+answer+"');");
			       pst.executeUpdate();
			       conn.close();
			       response.sendRedirect("admin.jsp");			       
		}
		catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("admin.jsp");
		}
	}

}
