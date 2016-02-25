package edu.secprog.dto;

public class Message {
	private String sender;
	private String recipient;
	private String content;
	private String subject;
	
	public Message(){}
	
	public Message(String sender, String recipient, String content, String subject){
		this.sender = sender;
		this.recipient = recipient;
		this.content = content;
		this.subject = subject;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}