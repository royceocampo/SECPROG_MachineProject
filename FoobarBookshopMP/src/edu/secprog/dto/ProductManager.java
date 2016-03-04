package edu.secprog.dto;

public class ProductManager extends Account {
	private String type;
	private String temppass;
	
	
	public ProductManager(){}
	
	public Customer(String type, String temppass){
	  
		this.type = type;
		this.temppass = temppass;
	}
	
	public String getManagerType() {
		return type;
	}
	
	public void setManagerType(String type){
		this.type = type;
	}
	
	public String getTempPassword() {
		return TempPassword;
	}
	
	public void setTempPassword(String temppass){
		this.temppass = temppass;
	}
	
	public void editProductInfo(){
	}
	
	public void addProduct(){
	}
	
	public void deleteProduct(){
	}
	
}
