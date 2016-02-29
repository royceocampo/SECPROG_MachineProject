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
	  
		this.firstname = firstname;
		this.lastname = lastname;
		this.middleinitial = middleinitial;
		this.email = email;
		this.billingaddress = billingaddress;
		this.deliveryaddress = deliveryaddress;
		this.cardname = cardname;
		this.cardnumber = cardnumber
		this.cardtype = cardtype;
		this.cardexpiry = cardexpiry;
	}
	
	public String getFirstName() {
		return firstname;
	}
	
	public void setFirstName(String firstname){
		this.firstname = firstname;
	}
	
	public String getLastName() {
		return lastname;
	}
	
	public void setLastName(String lastname){
		this.lastname = lastname;
	}
	
	public String getMiddleInitial() {
		return middleinitial;
	}
	
	public void setMiddleInitial(String middleinitial){
		this.middleinitial = middleinitial;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email){
		this.email = email;
	}
	
	public Address getBillingAddress() {
		return billingaddress;
	}
	
	public void setBillingAddress(Address billingaddress){
		this.billingaddress = billingaddress;
	}
	
	public Address getDeliveryAddress() {
		return deliveryaddress;
	}
	
	public void setDeliveryAddress(Address deliveryaddress){
		this.deliveryaddress = deliveryaddress;
	}
	
	public String getCardName() {
		return cardname;
	}
	
	public void setCardName(String cardname){
		this.cardname = cardname;
	}
	
	public int getCardNumber() {
		return cardnumber;
	}
	
	public void setCardNumber(int cardnumber){
		this.cardnumber = cardnumber;
	}
	
	public String getCardType() {
		return cardtype;
	}
	
	public void setCardType(String cardtype){
		this.cardtype = cardtype;
	}
}
