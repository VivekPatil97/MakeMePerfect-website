package com;
import com.DBCon;
import java.io.IOException;


import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Reg
 */
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name,un,pw,cpw,email,errmsg;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		name=request.getParameter("name");
		un=request.getParameter("username");
		pw=request.getParameter("password");
		cpw=request.getParameter("cpassword");
		email=request.getParameter("email");
		HttpSession session =request.getSession();
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = 
		new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentTime = sdf.format(dt);
		try{           
			
			if(validate()==true){
				   conn=DBCon.db();
			       PreparedStatement pst = conn.prepareStatement("INSERT INTO `users`(U_name,U_username,U_email,password,reg_time) VALUES ('"+name+"','"+un+"','"+email+"','"+pw+"','"+currentTime+"');");
			       pst.executeUpdate();
				   session.setAttribute("name", name);
				   session.setAttribute("username", un);
				   response.sendRedirect("index.jsp");
				   session.removeAttribute("error");
			}
			else{session.setAttribute("error", errmsg);response.sendRedirect("register.jsp");}
		}
		catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("register.jsp");
		}       		
	}
	
	private boolean validate() throws SQLException{
		if(name!=null){
			if((un!=null)&&(unVal()==true)){
				if((email!=null)&&(emailVal()==true)){
					if((pw!=null)&&(passVal()==true)){
						return true;
					}
					else{errmsg="password not matched";}
				}
				else{errmsg="email error";}
			}
			else{errmsg="Username already exist";}
		}
		return false;
	}
	boolean unVal() throws SQLException{
		Connection conn = DBCon.db();
		PreparedStatement pst = conn.prepareStatement("select U_username from users where U_username=?");
	    pst.setString(1, un);
		ResultSet rs = pst.executeQuery();		
		if (!rs.next()){
			return true;
		}
		return false;
	}
	boolean emailVal(){
		return true;
	}
	boolean passVal(){
		if(pw.equals(cpw)){
			return true;
		}
		else{
		return false;}
	}
}
