package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ChgPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String username,oldpw,newpw,repw,errmsg;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		username=request.getParameter("username");
		oldpw=request.getParameter("oldpassword");
		newpw=request.getParameter("newpassword");
		repw=request.getParameter("repassword");
		HttpSession session =request.getSession();
		try{           
			
			if(validate()==true){
				   conn=DBCon.db();
			       PreparedStatement pst = conn.prepareStatement("UPDATE users SET password=? WHERE U_name=? or U_email=?;");
			       pst.setString(1, newpw);
			       pst.setString(2, username);
			       pst.setString(3, username);
			       pst.executeUpdate();
			       conn.close();
				   session.removeAttribute("error");
				   response.sendRedirect("profile.jsp");
			}
			else{
			session.setAttribute("error", errmsg);
			response.sendRedirect("ResetPass.jsp");}
		}
		catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("ResetPass.jsp");
		}       		
	}
	
    boolean validate() throws SQLException{
    	if(username!=null){
			if(pwVal()==true){
				if(passVal()==true){
					return true;
				}
				else{errmsg="new password and re-entered password not matched";}
			}
			else{errmsg="check yopur old password";}
		}  	
    	return false;
    }
    
	boolean pwVal() throws SQLException{
		try{
		Connection conn = DBCon.db();
		PreparedStatement pst1 = conn.prepareStatement("Select * from users where U_username=? or U_email=? and password=?");
	    pst1.setString(1, username);
	    pst1.setString(2, username);
	    pst1.setString(3, oldpw);
		ResultSet rs1 = pst1.executeQuery();		
		if (rs1.next()){
			return true;
		}
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	boolean passVal(){
		if(newpw.equals(repw)){
			return true;
		}
		else{
		return false;}
	}

}
