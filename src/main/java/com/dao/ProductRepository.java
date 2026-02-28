package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bean.ProductBean;

@Repository
public interface ProductRepository extends JpaRepository<ProductBean, Integer>{

}
