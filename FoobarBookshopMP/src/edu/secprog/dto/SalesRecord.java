package edu.secprog.dto;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class SalesRecord {
	private Customer buyer;
	private Product productbought;
	private String productreview;
	private Date transactiondate;
	
	public Product(){}
	
	//for book
	public Product(Customer buyer, Product productbought, String productreview, Date transactiondate){
		this.buyer = buyer;
		this.productbought = productbought;
		this.productreview = productreview;
		this.transactiondate = transactiondate;
	}
	
	public Customer getBuyer() {
		return buyer;
	}

	public void setBuyer(Customer buyer) {
		this.buyer = buyer;
	}
	
	public Product getproductbought() {
		return productbought;
	}

	public void setProduct(Product productbought) {
		this.productbought = productbought;
	}
	
	public String getproductreview(){
		return productreview;
	}
	
	public void setPrice(String productreview){
		this.productreview = productreview;
	}
	
	private String getDateTime() {
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    Date date = new Date();
    return dateFormat.format(date);
  }
  
  private Date getDateTime() {
    return transactiondate;
  }
  
	public void setDate(Date date){
		this.date = date;
	}
}
