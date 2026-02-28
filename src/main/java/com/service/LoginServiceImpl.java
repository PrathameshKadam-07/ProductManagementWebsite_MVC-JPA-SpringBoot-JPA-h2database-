package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.LoginBean;
import com.dao.LoginRepository;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginRepository lrepo;

	@Override
	public void saveUserPass(LoginBean l) {
		lrepo.save(l);
	}

	@Override
	public LoginBean authenticate(String uname) {
	    LoginBean lb = lrepo.findById(uname).orElse(null);
		return lb;
	}
	
}
