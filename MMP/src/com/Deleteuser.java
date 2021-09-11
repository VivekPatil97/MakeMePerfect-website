package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Deleteuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String id=null;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		id=request.getParameter("id");
		try{           
				   conn=DBCon.db();
			       PreparedStatement pst = conn.prepareStatement("DELETE FROM users WHERE U_id =?;");
			       pst.setString(1, id);
			       pst.executeUpdate();
			       conn.close();
			       response.sendRedirect("users.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}       		

	}

}
