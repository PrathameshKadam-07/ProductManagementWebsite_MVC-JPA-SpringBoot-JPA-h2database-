package com.bean;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "loginTable")
public class loginBean {
	
	@Id
	@Column(name = "Username")
String uname;
	
	@Column(name = "Password")
String pass;
	
	  public loginBean() {}

	  public String getUname() {
		  return uname;
	  }

	  public void setUname(String uname) {
		  this.uname = uname;
	  }

	  public String getPass() {
		  return pass;
	  }

	  public void setPass(String pass) {
		  this.pass = pass;
	  }
	  
	  
}
