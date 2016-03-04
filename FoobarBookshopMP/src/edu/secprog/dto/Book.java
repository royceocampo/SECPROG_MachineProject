package edu.secprog.dto;

public class Book extends Product {
	private String author;
	private String genre;
	
	
	public Book(){}
	
	public Book(String author, String genre){
	  
		this.author = author;
		this.genre = genre;
	}
	
	
	public String getAuthor() {
		return author;
	}
	
	public void setAuthor(String author){
		this.author = author;
	}
	
	public String getGenre() {
		return genre;
	}
	
	public void setGenre(String genre){
		this.genre = genre;
	}
	

	
}
