package edu.secprog.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	static final String url = "jdbc:mysql://localhost:3306/?user=root/foobar_sql";
	static final String username = "root";
	static final String password = "p@ssword";
	
	public DBConnection(){}
	
	public static Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver found.");
		}
		catch (ClassNotFoundException e) {
			System.out.println("Driver not found.");
		}
		
		try{
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("Connection successful!");
			
		}
		catch(SQLException e){
			System.out.println("Something is wrong with the connection string.");
		}
		return conn;
	}
}
