package com.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.bean.productBean;
import com.dao.productRepository;
import com.service.productService;

@Controller
public class productController {
	
	@Autowired
	productRepository pr;
	
	@Autowired
	productService pservice;
	
    @GetMapping("/")
    public String home() {
        return "index";  
    }
	
	@GetMapping("/home")
	public String getindex() {
		return "home";
	}
	
	@GetMapping("/deleteProduct")
	public String getdelete() {
		return "deleteProduct";
	}
	
	@GetMapping("/addProduct")
	public String getadd() {
		return "addProduct";
	}
	
	@GetMapping("/updateProduct")
	public String getupdate() {
		return "updateProduct";
	}
	
	@GetMapping("/showById")
	public String getshowbyID() {
		return "showById";
	}
	
	@PostMapping("/add")
	public String getaddProduct(productBean p,Model m) {
		pservice.saveProduct(p);
		m.addAttribute("msg","Successful Product Added");
		
		return "addProduct";
	}
	

	@DeleteMapping("/delete")
	public String getdeleteProduct(@RequestParam("id") int id,Model m) {
		pservice.deleteProduct(id);
		m.addAttribute("msg","Successful Product Deleted");
		
		return "deleteProduct";
	}
	

	
	@PutMapping("/update")
	public String getupdateProduct(productBean p,Model m) {
		
		pservice.saveProduct(p);
		m.addAttribute("msg","Successful Product Updated");
		
		return "updateProduct";
	}
	

	
	@GetMapping("/showbyid")
	public String getshowbyID(@RequestParam("id") int id,Model m) {

		productBean product = pservice.findProductById(id);
		m.addAttribute("product",product);
		
		return "showById";
	}
	
	@GetMapping("/Showall")
	public String getshowAll(Model m) {
		
		ArrayList<productBean> list = pservice.findAllProduct();	
		m.addAttribute("list",list);
		
		return "Showall";
	}
	
}
