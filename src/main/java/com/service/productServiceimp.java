package com.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.productBean;
import com.dao.productRepository;

@Service
public class productServiceimp implements productService {

@Autowired
productRepository prepo;

	
	public void saveProduct(productBean pb) {
		prepo.save(pb);
	}
	
	public void deleteProduct(int id) {
		prepo.deleteById(id);
	}
	
	public productBean findProductById(int id) {
		productBean p = prepo.findById(id).orElse(null);
		return p;
	}

	public ArrayList<productBean> findAllProduct() {
	ArrayList<productBean> list = (ArrayList<productBean>) prepo.findAll();
		return list;
	}


}
