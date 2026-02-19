package com.service;
import com.bean.loginBean;

public interface loginService 
{

	public void saveUserPass(loginBean l);	
	
	public loginBean authenticate(String uname,String pass); 

}
