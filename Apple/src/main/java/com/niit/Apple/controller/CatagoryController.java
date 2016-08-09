package com.niit.Apple.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.appleproduct.dao.CatagoryDAO;
import com.niit.appleproduct.models.Catagory;

public class CatagoryController {

	@Autowired
	CatagoryDAO catagoryDAO;
	@Autowired
	Catagory catagory;
	
	@RequestMapping(value = "/onLoad", method = RequestMethod.GET)
	public String onLoad(Model model) {
		System.out.println("onLoad");
		model.addAttribute("catagory", new Catagory());
		model.addAttribute("catagoryList", this.catagoryDAO.list());
		return "/home";
	}
	
	
	@RequestMapping(value = "/managecategories")
	public String listCategories(Model model) {
		model.addAttribute("catagory", new Catagory());
		model.addAttribute("catagoryList", this.catagoryDAO.list());
		return "catagory";
	}
	
	@RequestMapping(value= "/catagory/add")
	public String addCatagory(@ModelAttribute("catagory") Catagory catagory){
		
	
			catagoryDAO.saveOrUpdate(catagory);
		
		return "redirect:/managecategories";
		
	}
	@RequestMapping("category/remove/{id}")
    public String deleteCatagory(@PathVariable("id") String id,ModelMap model) throws Exception{
		
       try {
		catagoryDAO.delete(id);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/managecategories";
    }
 
    @RequestMapping("catagory/edit/{id}")
    public String editCatagory(@PathVariable("id") String id, Model model){
    	System.out.println("editCatagory");
        model.addAttribute("catagory", this.catagoryDAO.get(id));
        model.addAttribute("listCatagories", this.catagoryDAO.list());
        return "catagory";
    }

}
