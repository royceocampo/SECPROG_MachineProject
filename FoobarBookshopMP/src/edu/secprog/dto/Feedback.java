package edu.secprog.dto;

public class Feedback {
	private int rating;
	private String comment;
	private String rater;
	private String user;
	
	public Feedback(){}
	
	public Feedback(int rating, String comment, String rater, String user){
		this.rating = rating;
		this.comment = comment;
		this.rater = rater;
		this.user = user;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getRater() {
		return rater;
	}

	public void setRater(String rater) {
		this.rater = rater;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
	
}