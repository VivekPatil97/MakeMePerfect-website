package com;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String username,name,email,errmsg,oldusername;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		username=request.getParameter("username");
		name=request.getParameter("name");
		email=request.getParameter("email");
		oldusername=request.getParameter("Uname");
		HttpSession session =request.getSession();
		try{           
			
			if(validate()==true){
				   conn=DBCon.db();
			       PreparedStatement pst = conn.prepareStatement("UPDATE users SET U_name=? U_username=? U_email=? WHERE U_username=? or U_email=?;");
			       pst.setString(1, name);
			       pst.setString(2, username);
			       pst.setString(3, email);
			       pst.setString(4, oldusername);
			       pst.setString(5, oldusername);
			       pst.executeUpdate();
			       conn.close();
				   session.removeAttribute("error");
				   response.sendRedirect("profile.jsp");
			}
			else{
			session.setAttribute("error", errmsg);
			response.sendRedirect("UpdateProfile.jsp");}
		}
		catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("UpdateProfile.jsp");
		}       		
	
	}
	boolean validate(){
		try{    
		Connection conn = DBCon.db();
		PreparedStatement pst = conn.prepareStatement("select U_username from users where U_username=?");
	    pst.setString(1, username);
		ResultSet rs = pst.executeQuery();		
		if (!rs.next()){
			return true;
		}
		}
		catch(Exception u){
			u.printStackTrace();
		}
		errmsg="username already exist";
		return false;
		
	}

}
