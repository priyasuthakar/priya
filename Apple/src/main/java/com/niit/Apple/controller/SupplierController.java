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

import com.niit.appleproduct.dao.SupplierDAO;
import com.niit.appleproduct.models.Supplier;



@Controller
public class SupplierController {
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private Supplier supplier;
	
	@RequestMapping("/add1")
	public ModelAndView supplier(){
		ModelAndView mv = new ModelAndView("/supplier");
		mv.addObject("supplier", supplier);  
		mv.addObject("addsupplier", "Add Supplier");
		return mv;
	}
	
	@RequestMapping(value ="/supplier",method=RequestMethod.POST)
	public ModelAndView  supplieradd(@ModelAttribute("supplier") Supplier supplier) {
	supplierDAO.save(supplier);
		ModelAndView mv = new ModelAndView("/view");
		mv.addObject("supplierList",supplierDAO.list());
		return mv;
	}
	
	@RequestMapping(value ="/add1/delete/{id}")
	public String deletesupplier(@PathVariable("id") int id,ModelMap model) {
		supplierDAO.delete(id);
		model.addAttribute("supplierList",supplierDAO.list());
		return "view";
	}
	
	@RequestMapping(value ="/add1/edit/{id}")
	public String editsupplier(@PathVariable("id") int id,Model model  ) {
		supplier = supplierDAO.get(id); 
		model.addAttribute("supplier", supplier);
		model.addAttribute("editsupplier", "Edit supplier");  
		return "edit1";
	}
	
	@RequestMapping("/edit1")
	public ModelAndView  supplieredit(@ModelAttribute("supplier") Supplier supplier) {
	System.out.println("Error");
     supplierDAO.update(supplier);
		ModelAndView mv = new ModelAndView("/view");
		mv.addObject("supplierList",supplierDAO.list());
		return mv;
	}
	}
