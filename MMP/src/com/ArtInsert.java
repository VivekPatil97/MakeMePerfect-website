package com;

import com.DBCon;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ArtInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String cName=null,aHeading=null,aDesc=null,aMain=null,aSyntax=null,aEg=null,aOut=null,errmsg;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cName=request.getParameter("cour");
		aHeading=request.getParameter("heading");
		aDesc=request.getParameter("descrip");
		aMain=request.getParameter("main");
		aSyntax=request.getParameter("syntax");
		aEg=request.getParameter("eg");
		aOut=request.getParameter("output");
		HttpSession session =request.getSession();
		if(cName.equals("c++")){cName="cpp";}
		try{           
			
			if(validate()==true){
				   conn=DBCon.db();
			       PreparedStatement pst = conn.prepareStatement("INSERT INTO `article`(C_name,A_heading,A_description,A_main,A_syntax,A_eg,A_output) VALUES ('"+cName+"','"+aHeading+"','"+aDesc+"','"+aMain+"','"+aSyntax+"','"+aEg+"','"+aOut+"');");
			       pst.executeUpdate();
				   response.sendRedirect("admin.jsp");
				   session.removeAttribute("error");
			}
			else{session.setAttribute("error", errmsg);response.sendRedirect("admin.jsp");}
		}
		catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("admin.jsp");
		} 
		
	}
	boolean validate(){
		if((!cName.equals(null))&&(!aHeading.equals(null))&&(!aDesc.equals(null))&&(aMain.equals(null))&&(aSyntax.equals(null))&&(aEg.equals(null))&&(aOut.equals(null)))
		{
			return true;
		}
		return false;
		
	}

}
