package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bean.productBean;

@Repository
public interface productRepository extends JpaRepository<productBean, Integer>{

}
