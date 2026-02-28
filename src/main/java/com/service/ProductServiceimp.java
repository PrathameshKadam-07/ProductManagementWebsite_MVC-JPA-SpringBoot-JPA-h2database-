package com.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.ProductBean;
import com.dao.ProductRepository;

@Service
public class ProductServiceimp implements ProductService {

@Autowired
ProductRepository prepo;

	
	public void saveProduct(ProductBean pb) {
		prepo.save(pb);
	}
	
	public void deleteProduct(int id) {
		prepo.deleteById(id);
	}
	
	public ProductBean findProductById(int id) {
		ProductBean p = prepo.findById(id).orElse(null);
		return p;
	}

	public ArrayList<ProductBean> findAllProduct() {
	ArrayList<ProductBean> list = (ArrayList<ProductBean>) prepo.findAll();
		return list;
	}


}
