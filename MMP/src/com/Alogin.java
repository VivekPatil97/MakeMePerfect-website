package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Alogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("username");
		String pw=request.getParameter("password");
		HttpSession session =request.getSession();
		if((un!="")&&(pw!="")){		
			try{   
				   conn=DBCon.db();           
			       PreparedStatement pst = conn.prepareStatement("Select A_name from admin where A_username=? or A_email=? and A_password=?");
			       pst.setString(1, un);
			       pst.setString(2, un);
			       pst.setString(3, pw);
			       ResultSet rs = pst.executeQuery();                        
			       if(rs.next()){
			    	   session.setAttribute("Aname", rs.getString("A_name"));
				       session.setAttribute("Ausername", un);
				       response.sendRedirect("admin.jsp");
			       }
			       else {
			    	   response.sendRedirect("Adminlogin.jsp");
			       }
			   }
			   catch(Exception e){
				   e.printStackTrace();
			   }       		
		}
		else{
			response.sendRedirect("Adminlogin.jsp");
		}
		
	}

}
