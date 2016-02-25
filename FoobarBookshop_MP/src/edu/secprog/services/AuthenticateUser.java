package edu.secprog.services;

import java.sql.*;

import edu.secprog.db.*;
import edu.secprog.db.DBConnection;


public class AuthenticateUser {
	
	public static boolean checkUser(String username, String password){
		boolean checker = false;
		Connection conn = null;
	    PreparedStatement ps = null;
		try{
			conn = DBConnection.getConnection();
			ps = conn.prepareStatement ("SELECT * FROM register WHERE username=? AND password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			checker = rs.next();
		}
		catch(Exception e){
			System.out.println("Could not retrieve username and/or password.");
		}
	    finally{
	    	try{
	    		if (ps != null)
		    		conn.close();
	    	}
	    	catch(SQLException se){
	    		
	    	}
	    	try{
	            if(conn!=null)
	               conn.close();
	        }
	    	catch(SQLException se){
	    		System.out.println("Oop");
//	            se.printStackTrace();
	        }
	    }
	    return checker;
	}
}
