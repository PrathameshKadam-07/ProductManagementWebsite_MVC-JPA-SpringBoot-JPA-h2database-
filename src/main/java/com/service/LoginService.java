package com.service;
import com.bean.LoginBean;

public interface LoginService 
{

	public void saveUserPass(LoginBean l);	
	
	public LoginBean authenticate(String uname); 

}
