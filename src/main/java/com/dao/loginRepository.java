package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.bean.loginBean;

@Repository
public interface loginRepository extends JpaRepository<loginBean,String> 
{

	loginBean findByUnameAndPass(String uname,String pass); 
	
}
