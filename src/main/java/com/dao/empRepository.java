package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bean.empBean;

@Repository
public interface empRepository extends JpaRepository<empBean, Integer>{

}
