package edu.secprog.dto;

public class Customer extends Account {
	private String firstname;
	private String lastname;
	private String middleinitial;
	private String email;
	private Address billingaddress;
	private Address deliveryaddress;
	private String cardname
	private int cardnumber;
	private String cardtype;
	private Date cardexpiry;
	
	
	public Customer(){}
	
	public Customer(String firstname, String lastname, String middleinitial, String email, 
	  Address billingaddress, Address deliveryaddress, String cardname, int cardnumber, String cardtype, Date cardexpiry){
	  
		this.itemName = name;
		this.owner = owner;
		this.availability = availability;
		this.title = title;
		this.author = author;
		this.pubYear = year;
		this.language = language;
		this.type = type;
	}
	
}
