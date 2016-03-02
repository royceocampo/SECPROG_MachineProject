package edu.secprog.dto;

public class Administrator extends Account {
	private String username;
	private String password;
	
	
	public Administrator(){}
	
	public Administrator(String username, String password){
	  
		this.username = username;
		this.password= password;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username){
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String username){
		this.password = password;
	}
	
	//more methods frickin needed
	
}
