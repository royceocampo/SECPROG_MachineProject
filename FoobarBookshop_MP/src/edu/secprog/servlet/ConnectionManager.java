package edu.secprog.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	private static ConnectionManager instance = null;
	
	 String USERNAME = "root";
	 String PASSWORD = "p@ssword";
	 String CONN_STRING = "jdbc:mysql://localhost/foobar_sql";
	
	 Connection conn = null;
	
	private ConnectionManager(){
	}
	
	public static ConnectionManager getInstance(){
		if(instance == null){
			instance = new ConnectionManager();
		}
		return instance;
	}
	private boolean openConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: 1");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: 2");
			e.printStackTrace();
		}
		return true;
	}
	public Connection getConnection(){
			if(conn == null){
				if(openConnection()){
						System.out.println("Connection Opened");
						return conn;
				}else{
					return null;
				}
			}
			return conn;
	}
	public void close(){
		System.out.println("Closing Connection");
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conn = null;
	}
}
