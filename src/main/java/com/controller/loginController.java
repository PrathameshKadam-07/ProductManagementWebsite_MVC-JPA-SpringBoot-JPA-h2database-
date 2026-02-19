package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.bean.loginBean;
import com.service.loginService;

import jakarta.servlet.http.HttpSession;

@Controller
public class loginController {
	
	
	@Autowired
	loginService lservice;
	

	@GetMapping("/index")
	public String getindex() {
		return "index";
		}
	
	
	@GetMapping("/createUser")
	public String getcreateUser() {
		return "createUser";
	}
	
    @PostMapping("/login")
	public String getlogin(@RequestParam("uname") String uname, @RequestParam("pass") String pass,HttpSession session,Model m) {
		loginBean lb = lservice.authenticate(uname,pass);
    	
		if(lb.getUname().equals(uname) && lb.getPass().equals(pass))
		{
			session.setAttribute("uname", uname);
			return "home";
		}
		else {
			m.addAttribute("msg","Invalid username or password");
			return "index";
		}
    }
    
    @PostMapping("/createUserPage")
    public String createUser(@RequestParam("uname") String uname,@RequestParam("pass") String pass,Model m) 
    {
    	loginBean lb = new loginBean();
    	lb.setUname(uname);
    	lb.setPass(pass);
    	lservice.saveUserPass(lb);
    	
    	m.addAttribute("msg","Successful User Created");
    	return "createUser";
    }
}
