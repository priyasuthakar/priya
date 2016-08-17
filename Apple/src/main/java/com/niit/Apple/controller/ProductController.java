package com.niit.Apple.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.appleproduct.dao.ProductDAO;
import com.niit.appleproduct.models.Product;

@Controller
public class ProductController {
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private Product product;
	
	@RequestMapping("/add2")
	public ModelAndView product(){
		ModelAndView mv = new ModelAndView("/product");
		mv.addObject("product", product);  
		mv.addObject("addproduct", "Add Product");
		return mv;
	}
	
	@RequestMapping(value ="/product",method=RequestMethod.POST)
	public ModelAndView  productadd(@ModelAttribute("product") Product product) {
	productDAO.save(product);
		ModelAndView mv = new ModelAndView("/view");
		mv.addObject("productList",productDAO.list());
		return mv;
	}
	
	@RequestMapping(value ="/add2/delete/{id}")
	public String deleteproduct(@PathVariable("id") int id,ModelMap model) {
		productDAO.delete(id);
		model.addAttribute("productList",productDAO.list());
		return "view";
	}
	
	@RequestMapping(value ="/add2/edit/{id}")
	public String editproduct(@PathVariable("id") int id,Model model  ) {
		product = productDAO.get(id); 
		model.addAttribute("product", product);
		model.addAttribute("editproduct", "Edit product");  
		return "edit2";
	}
	
	@RequestMapping("/edit2")
	public ModelAndView  productedit(@ModelAttribute("product") Product product) {
     productDAO.update(product);
		ModelAndView mv = new ModelAndView("/view");
		mv.addObject("productList",productDAO.list());
		return mv;
	}
	
}
