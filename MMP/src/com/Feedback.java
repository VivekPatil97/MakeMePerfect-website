package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name=null,email=null,mobNo=null,msg=null;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		name=request.getParameter("name");
		email=request.getParameter("email");
		mobNo=request.getParameter("phone");
		msg=request.getParameter("message");
		try{           		
				   conn=DBCon.db();
			       PreparedStatement pst = conn.prepareStatement("INSERT INTO `feedback`(email,name,mobNo,message) VALUES ('"+email+"','"+name+"','"+mobNo+"','"+msg+"');");
			       pst.executeUpdate();
			       conn.close();
			       response.sendRedirect("index.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}       		
	}
	}


