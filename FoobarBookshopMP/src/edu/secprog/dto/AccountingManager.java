package edu.secprog.dto;

public class AccountingManager extends Account {
	private String temppass;
	
	
	public AccountingManager(){}
	
	public AccountingManager(String type, String temppass){
	  
		this.temppass = temppass;
	}
	
	
	public String getTempPassword() {
		return TempPassword;
	}
	
	public void setTempPassword(String temppass){
		this.temppass = temppass;
	}
	
	public void viewProductSales(){
	}
	
	public void viewProductTypeSales(){
	}
	
	public void viewTotalSales(){
	}
	
}
