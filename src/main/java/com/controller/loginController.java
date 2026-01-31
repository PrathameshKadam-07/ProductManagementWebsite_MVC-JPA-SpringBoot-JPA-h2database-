package com.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.loginBean;

import com.dao.loginRepository;
import jakarta.servlet.http.HttpSession;

@Controller
public class loginController {
	
	@Autowired
	loginRepository lr;

	@RequestMapping("loginUser")
	public String getindex() {
		return "loginUser";
	}
	
	@RequestMapping("createUser")
	public String getcreateUser() {
		return "createUser";
	}
	
    @RequestMapping(value = "loginpage", method = RequestMethod.POST)
	public String getlogin(@RequestParam("uname") String uname, @RequestParam("pass") String pass,HttpSession session,Model m) {
		ArrayList<loginBean> list = lr.findByUnameAndPass(uname, pass);
		
		if(list.isEmpty()) 
		{
			m.addAttribute("msg","Invalid username or password");
			return "loginUser";
		}
		else 
		{
			session.setAttribute("uname", uname);
			session.setAttribute("pass", pass);
			return "home";
		}
	}
    
    @RequestMapping(value = "createUserPage")
    public String createUser(@RequestParam("uname") String uname,@RequestParam("pass") String pass) {
    	
    	return "createUserPage";
    }
}
