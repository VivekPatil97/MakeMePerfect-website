package com;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCon {
	 Connection conn=null;
	    public static Connection db(){	        
	        try{
	            Class.forName("com.mysql.jdbc.Driver");
	           // Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/mmp?" + "user=root&password=vivek");
	            Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/mmp","root","vivek");
	            return conn;	                   
	        }catch (Exception e){
	        	 e.printStackTrace();
	        	 System.out.println("connection not created");
	            return null;
	        }	        
	    }
}
