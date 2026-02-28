package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.bean.LoginBean;
import com.service.LoginService;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
	
	
	@Autowired
	LoginService lservice;
	
	@Autowired
	PasswordEncoder passEn;

	@GetMapping("/loginPage")
	public String getindex() {
		return "loginPage";
		}
	
	
	@GetMapping("/createUser")
	public String getcreateUser() {
		return "createUser";
	}
	
    @PostMapping("/login")
	public String getlogin(@RequestParam("uname") String uname, @RequestParam("pass") String pass,HttpSession session,Model m) {
		LoginBean lb = lservice.authenticate(uname);
    	
	    if (lb == null) {
	    		m.addAttribute("msg","Invalid username or password");
	        return "loginPage";
	    }
		if(lb.getUname().equals(uname) && passEn.matches(pass, lb.getPass()))
		{
			session.setAttribute("uname", uname);
			return "home";
		}
		else {
			m.addAttribute("msg","Invalid username or password");
			return "loginPage";
		}
    }

    
    @PostMapping("/createUserPage")
    public String createUser(@RequestParam("uname") String uname,@RequestParam("pass") String pass,Model m) 
    {
    	LoginBean lb = new LoginBean();
    	lb.setUname(uname);
    	lb.setPass(passEn.encode(pass));
    	
    	lservice.saveUserPass(lb);
    	
    	m.addAttribute("msg","Successful User Created");
    	return "createUser";
    }
}
