package edu.secprog.dto;

public class Item {
	private String itemName;
	private String owner;
	private boolean availability;
	private String title;
	private String author;
	private int pubYear;
	private String language;
	private String subject;
	private String professor;
	private String ytt;
	private String brand;
	private String type;
	private String color;
	private int usbSize;
	private String desc;
	private int id;
	
	public Item(){}
	
	//for book
	public Item(String name, String owner, boolean availability, String title, String author, int year, String language, String type){
		this.itemName = name;
		this.owner = owner;
		this.availability = availability;
		this.title = title;
		this.author = author;
		this.pubYear = year;
		this.language = language;
		this.type = type;
	}
	
	//for calculator
	public Item(String name,boolean availability, String owner, String brand, String type) {
		this.itemName = name;
		this.owner = owner;
		this.availability = availability;
		this.brand = brand;
		this.type = type;
	}
	
	//for notebook
	public Item(String name, String owner, boolean availability, String subject, String professor, String yeartermtaken, String type) {
		this.itemName = name;
		this.owner = owner;
		this.availability = availability;
		this.subject = subject;
		this.professor = professor;
		this.ytt = yeartermtaken;
		this.type = type;
	}
	
	//for other
	public Item(String name, String owner, String brand, boolean availability, String description, String type) {
		this.itemName = name;
		this.owner = owner;
		this.availability = availability;
		this.brand = brand;
		this.desc = description;
		this.type = type;
	}
	
	//for school supplies
	public Item(String name, String owner, boolean availability, String brand, String color, String type) {
		this.itemName = name;
		this.owner = owner;
		this.availability = availability;
		this.brand = brand;
		this.color = color;
		this.type = type;
	}
	
	//for umbrella
	public Item(String name, String owner, boolean availability, String color, String type) {
		this.itemName = name;
		this.owner = owner;
		this.availability = availability;
		this.color = color;
		this.type = type;
	}
	
	//for usb
	public Item(String name, String owner, boolean availability, String brand, int size, String type) {
		this.itemName = name;
		this.owner = owner;
		this.availability = availability;
		this.brand = brand;
		this.usbSize = size;
		this.type = type;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public boolean isAvailability() {
		return availability;
	}

	public void setAvailability(boolean availability) {
		this.availability = availability;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getPubYear() {
		return pubYear;
	}

	public void setPubYear(int pubYear) {
		this.pubYear = pubYear;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getProfessor() {
		return professor;
	}

	public void setProfessor(String professor) {
		this.professor = professor;
	}

	public String getYtt() {
		return ytt;
	}

	public void setYtt(String ytt) {
		this.ytt = ytt;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getUsbSize() {
		return usbSize;
	}

	public void setUsbSize(int usbSize) {
		this.usbSize = usbSize;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
	
}
