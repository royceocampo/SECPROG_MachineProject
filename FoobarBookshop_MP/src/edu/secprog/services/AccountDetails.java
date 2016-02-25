package edu.secprog.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import edu.secprog.db.DBConnection;

public class AccountDetails {
	public static int getID(String userid) 
    {
		int accountID = 0;
		Connection conn = null;
   	 	PreparedStatement ps = null;
   	 	try{
   	 		conn = DBConnection.getConnection();
   	 		ps = conn.prepareStatement
                 ("SELECT id FROM register WHERE username = ?");
   	 		ps.setString(1, userid);
   	 		ResultSet rs = ps.executeQuery();
    	 
   	 		while(rs.next()){
   	 			accountID = rs.getInt("id"); 
   	 			System.out.println(accountID);
   	 		}
   	 	}
   	 	catch(Exception e)
     	{
   	 		System.out.println("Unable to retrieve account ID.");
//     		e.printStackTrace();
     	}
   	 	finally{
   	 		try{
   	 			if(ps!=null)
   	 				conn.close();
   	 		}
   	 		catch(SQLException se){
   	 		}// do nothing
   	 		try{
   	 			if(conn!=null)
   	 				conn.close();
   	 		}
   	 		catch(SQLException se){
//   	 			se.printStackTrace();
   	 		System.out.println("Unable to close connection.");
   	 		}
   	 	}
		return accountID;      
    }
}
