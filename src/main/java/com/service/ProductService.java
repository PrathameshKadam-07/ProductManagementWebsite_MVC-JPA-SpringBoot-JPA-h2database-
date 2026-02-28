package com.service;

import java.util.ArrayList;

import com.bean.ProductBean;

public interface ProductService {

	public void saveProduct(ProductBean pb);
	
	public void deleteProduct(int id);
	
	public ProductBean findProductById(int id);
	
	public ArrayList<ProductBean> findAllProduct();
}
