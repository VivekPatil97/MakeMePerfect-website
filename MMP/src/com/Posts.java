package com;

import java.io.IOException;
//import com.DBCon;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
public class Posts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String title,name,intro,descrip;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		name=request.getParameter("name");
		title=request.getParameter("title");
		intro=request.getParameter("Introduction");
		descrip=request.getParameter("Description");
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = 
		new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentTime = sdf.format(dt);
		try{           
				   conn=DBCon.db();
			       PreparedStatement pst = conn.prepareStatement("INSERT INTO `blog`(title,createdBy,introduction,description,postTime) VALUES ('"+title+"','"+name+"','"+intro+"','"+descrip+"','"+currentTime+"');");
			       pst.executeUpdate();
			       response.sendRedirect("blog.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("blog.jsp");
		}       		

	}

}
