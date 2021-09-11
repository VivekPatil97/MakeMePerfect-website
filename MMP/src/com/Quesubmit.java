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

/**
 * Servlet implementation class Quesubmit
 */
public class Quesubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
    String userans,error,ans,uid,cname;
    int id;
    Connection conn;
    PreparedStatement pst,pst1,pst2,pst3;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userans=request.getParameter("option");
		id=Integer.valueOf(request.getParameter("aid"));
		uid=request.getParameter("uid");
		cname=request.getParameter("cname");
		HttpSession session =request.getSession();
		conn=DBCon.db(); 
		try {
			if(cname.equals("c++")){cname="cpp";}
			pst = conn.prepareStatement("Select answer from questions where id=?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			rs.next();
			ans=rs.getString("answer");
		
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		if(ans==userans){
			process();
			response.sendRedirect("LRNC.jsp?n=cpp");
			session.removeAttribute("ansresult");
		}
		else{
			response.sendRedirect("article.jsp?n="+id+"#question");
			session.setAttribute("ansresult","wrong" );
		}
	}
	void process(){	
		try {
			pst1 = conn.prepareStatement("Select * from progress where U_id=?");
			pst1.setString(1, uid);
			ResultSet rs1 = pst1.executeQuery();  
			if(rs1.next()){	
				System.out.println("if");
				pst3 = conn.prepareStatement("UPDATE progress SET ?= CONCAT(?,'%, '?) WHERE U_id=?");
				pst3.setString(1, cname);
				pst3.setString(2, cname);
				pst3.setInt(3, id);
				pst3.setString(4, uid);
				pst3.executeUpdate();
			}
			else{
				System.out.println("else");
				pst2 = conn.prepareStatement("insert into progress(U_id) values('"+uid+"')");
				pst3 = conn.prepareStatement("UPDATE progress SET ?=? WHERE U_id=?");
				pst3.setString(1, cname);
				pst3.setInt(2, id);
				pst3.setString(3, uid);
				pst2.executeUpdate();
				pst3.executeUpdate();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
