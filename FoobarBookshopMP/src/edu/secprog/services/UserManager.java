package edu.secprog.services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.secprog.db.DBConnection;
import edu.secprog.dto.User;

public class UserManager {
	public UserManager() {}
	
	public void addUser(User newuser){
		Connection conn = (Connection) DBConnection.getConnection();
		String sql = "INSERT INTO USERS (username, firstName, lastName, gender, email, password, college, idNum, rating) VALUES (?,?,?,?,?,?,?,?,?);";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, newuser.getUsername());
			pstmt.setString(2, newuser.getFirstname());
			pstmt.setString(3, newuser.getLastname());
			pstmt.setString(4, newuser.getGender());
			//pstmt.setDate(5, new java.sql.Date(newuser.getBirthday()));
			pstmt.setString(5, newuser.getEmail());
			pstmt.setString(6, newuser.getPassword());
			pstmt.setString(7, newuser.getCollege());
			pstmt.setInt(8, newuser.getIdnum());
			pstmt.setInt(9, 0);
			
			pstmt.executeUpdate();
			conn.close();
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static User getUser(String uname) {
		Connection conn = DBConnection.getConnection();
		String sql = "SELECT * FROM USERS WHERE username = ?";
		User user = new User();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uname);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				user.setUsername(rs.getString("username"));
				user.setFirstname(rs.getString("firstname"));
				user.setLastname(rs.getString("lastname"));
				user.setGender(rs.getString("gender"));
				//pstmt.setDate(5, "2001-01-01");
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setCollege(rs.getString("college"));
				user.setIdnum(rs.getInt("idnum"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;	
	}
	
	public ArrayList<User> getAllUsers() {		
		Connection conn = DBConnection.getConnection();
		String sql = "SELECT * FROM USERS";
		ArrayList<User> usersList = new ArrayList<User>();
		try {
			PreparedStatement pstmt= conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				User newuser = new User();
				newuser.setUsername(rs.getString("username"));
				newuser.setFirstname(rs.getString("firstname"));
				newuser.setLastname(rs.getString("lastname"));
				newuser.setGender(rs.getString("gender"));
				//pstmt.setDate(5, "2001-01-01");
				newuser.setEmail(rs.getString("email"));
				newuser.setPassword(rs.getString("password"));
				newuser.setCollege(rs.getString("college"));
				newuser.setIdnum(rs.getInt("idnum"));
				usersList.add(newuser);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return usersList;
		
	}
	
	public void deleteUser(int idnum){
		String sql = "DELETE FROM USERS WHERE IDNUM=?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idnum);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public boolean verifyUser(String username, String password){
		String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				pstmt.close();
				conn.close();
				return true;
			}
			else{
				pstmt.close();
				conn.close();
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;	
	}
	
	public boolean ifUserExist(String uname){
		Connection conn = DBConnection.getConnection();
		String sql = "SELECT * FROM USERS WHERE username = ?";
		User user = new User();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uname);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;	
		
	}
}
