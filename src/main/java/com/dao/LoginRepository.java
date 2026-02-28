package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.bean.LoginBean;

@Repository
public interface LoginRepository extends JpaRepository<LoginBean,String> {
	
}
