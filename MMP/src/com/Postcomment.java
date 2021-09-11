package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;



public class Postcomment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name,comment;
	int id;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		name=request.getParameter("name");
		id=Integer.valueOf(request.getParameter("Pid"));
		comment=request.getParameter("com");
		try{           
			   conn=DBCon.db();
		       PreparedStatement pst = conn.prepareStatement("INSERT INTO comments (pid,comment,postedBy) VALUES ('"+id+"','"+comment+"','"+name+"');");
		       pst.executeUpdate();
		       response.sendRedirect("blog.jsp");
	}
	catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("blog.jsp");
	}
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
