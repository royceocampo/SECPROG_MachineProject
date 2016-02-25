package edu.secprog.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.secprog.db.DBConnection;
import edu.secprog.dto.Feedback;
import edu.secprog.dto.Item;

public class FeedbackManager {
	public FeedbackManager(){}
	
	public static void addFeedback(Feedback f){
		Connection conn = DBConnection.getConnection();
		String sql = "INSERT INTO feedbacks (rating, comment, rater, ratedUser) VALUES (?,?,?,?);";
		
			try{
				PreparedStatement pstmt = conn.prepareStatement(sql);

				pstmt.setInt(1, f.getRating());
				pstmt.setString(2, f.getComment());
				pstmt.setString(3, f.getRater());
				pstmt.setString(4, f.getUser());
			
				pstmt.executeUpdate();
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public static ArrayList<Feedback> getAllFeedbacks(String username){
		Connection conn = DBConnection.getConnection();
		String sql = "SELECT * FROM feedbacks WHERE ratedUser = ?;";
		ArrayList<Feedback> feedbacks = new ArrayList<Feedback>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			ResultSet rs = pstmt.executeQuery();
				while(rs.next()){
					Feedback f = new Feedback();
					f.setRating(rs.getInt("rating"));
					f.setComment(rs.getString("comment"));
					f.setRater(rs.getString("rater"));
					f.setUser(rs.getString("ratedUser"));
					feedbacks.add(f);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return feedbacks;
	}	
}
