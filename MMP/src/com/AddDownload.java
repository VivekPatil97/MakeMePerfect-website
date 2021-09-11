package com;

import java.io.IOException;
import java.io.File;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class AddDownload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String type,descrip,filename,scr="D:/eclips/MMP/src/",cid;
	Connection conn;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cid=request.getParameter("cour");
		descrip=request.getParameter("description");
		type=request.getParameter("type");
		if(cid.equals("c++")){cid="cpp";}
		try{
		ServletFileUpload sf= new ServletFileUpload(new DiskFileItemFactory());
		FileItem file = (FileItem) sf.parseRequest((javax.servlet.http.HttpServletRequest) request);
		filename=file.getName();
		file.write(new File("D:/eclips/MMP/src/"+ file.getName()));
		}
		catch(Exception e){
			System.out.print(e);
			response.sendRedirect("error.jsp");
		}
		scr+=filename;
		if(insert()==true){response.sendRedirect("admin.jsp");}
		else{response.sendRedirect("error.jsp");}
	}
	boolean insert(){
		try{           
		       conn=DBCon.db();
		       PreparedStatement pst = conn.prepareStatement("insert into download(C_id,name,type,description,source) values(?,?,?,?,?)");
		       pst.setString(1, cid);pst.setString(2, filename);pst.setString(3, type);pst.setString(3, descrip);pst.setString(3, scr);
		       pst.executeQuery();
		       return true;
		   }
		   catch(Exception e){
			   e.printStackTrace();
			   return false;
		   }	
	}

}
