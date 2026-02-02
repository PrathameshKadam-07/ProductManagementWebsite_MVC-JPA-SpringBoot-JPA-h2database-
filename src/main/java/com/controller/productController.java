package com.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.productBean;
import com.dao.productRepository;

@Controller
public class productController {
	
	@Autowired
	productRepository pr;
	
	@RequestMapping("/addProduct")
	public String getadd() {
		return "addProduct";
	}
	
	@RequestMapping("/add")
	public String getaddProduct(productBean p,Model m) {
		pr.save(p);
		
		m.addAttribute("msg","Successful Product Added");
		return "addProduct";
	}
	
	@RequestMapping("/deleteProduct")
	public String getdelete() {
		return "deleteProduct";
	}
	
	@RequestMapping("/delete")
	public String getdeleteProduct(@RequestParam("id") int id,Model m) {
		pr.deleteById(id);
		
		m.addAttribute("msg","Successful Product Deleted");
		return "deleteProduct";
	}
	
	@RequestMapping("/updateProduct")
	public String getupdate() {
		return "updateProduct";
	}
	
	@RequestMapping("/update")
	public String getupdateProduct(productBean p,Model m) {
		pr.save(p);
		
		m.addAttribute("msg","Successful Product Updated");
		return "updateProduct";
	}
	
	@RequestMapping("/showById")
	public String getshowbyID() {
		return "updateProduct";
	}
	
	@RequestMapping("/showbyid")
	public String getshowbyID(@RequestParam("id") int id,Model m) {
		productBean p = pr.findById(id).orElse(null);
		
		m.addAttribute("product",p);
		return "showById";
	}
	
	@RequestMapping("/showAll")
	public String getshowAll(Model m) {
		ArrayList<productBean> list = (ArrayList<productBean>) pr.findAll();
		
		m.addAttribute("list",list);
		return "showAll";
	}
	
}
