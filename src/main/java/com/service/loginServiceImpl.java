package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.loginBean;
import com.dao.loginRepository;

@Service
public class loginServiceImpl implements loginService {

	@Autowired
	loginRepository lrepo;

	@Override
	public void saveUserPass(loginBean l) {
		lrepo.save(l);
	}

	@Override
	public loginBean authenticate(String uname) {
	    loginBean lb = lrepo.findById(uname).orElse(null);
		return lb;
	}
	
}
