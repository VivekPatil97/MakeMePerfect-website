package com;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("username");
		String pw=request.getParameter("password");
		HttpSession session =request.getSession();
		Connection conn;
		
		if((un!="")&&(pw!="")){		
			try{   
				   conn=DBCon.db();           
			       PreparedStatement pst = conn.prepareStatement("Select U_name from users where U_username=? or U_email=? and password=?");
			       pst.setString(1, un);
			       pst.setString(2, un);
			       pst.setString(3, pw);
			       ResultSet rs = pst.executeQuery();                        
			       if(rs.next()){
			    	   session.setAttribute("name", rs.getString("U_name"));
				       session.setAttribute("username", un);
				       response.sendRedirect("index.jsp");
			       }
			       else {
			    	   response.sendRedirect("login.jsp");
			       }
			   }
			   catch(Exception e){
				   e.printStackTrace();
			   }       		
		}
		else{
			response.sendRedirect("login.jsp");
		}
	}
}
