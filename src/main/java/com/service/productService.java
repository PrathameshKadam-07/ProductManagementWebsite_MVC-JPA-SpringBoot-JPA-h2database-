package com.service;

import java.util.ArrayList;

import com.bean.productBean;

public interface productService {

	public void saveProduct(productBean pb);
	
	public void deleteProduct(int id);
	
	public productBean findProductById(int id);
	
	public ArrayList<productBean> findAllProduct();
}
