package com.bean;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "productTable")
public class productBean {
 
	@Id
	@Column(name = "Pid")
	int pid;
	@Column(name = "PNAME")
	String pname;
	@Column(name = "PQTY")
	int qty;
	@Column(name = "PRICE")
	int price;
	
	 public productBean() {}
	 
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
