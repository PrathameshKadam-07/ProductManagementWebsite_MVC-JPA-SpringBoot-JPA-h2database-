package com.bean;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "emp")
public class empBean {
 
	@Id
	@Column(name = "")
	int eid;
	@Column()
	String ename;
	@Column()
	String esal;
	
}
