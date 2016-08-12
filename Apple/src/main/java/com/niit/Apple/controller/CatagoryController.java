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

import com.niit.appleproduct.dao.CatagoryDAO;
import com.niit.appleproduct.models.Catagory;

@Controller
public class CatagoryController {

	@Autowired
	private CatagoryDAO catagoryDAO;
	@Autowired
	private Catagory catagory;

	@RequestMapping(value ="catagory",method=RequestMethod.GET)
	public ModelAndView catagory(){
		ModelAndView mv = new ModelAndView("/add");
		mv.addObject("catagory", catagory);  
		mv.addObject("addcatagory", "Add Catagory");
		return mv;
	}

	// For add and update
	@RequestMapping(value ="catagory",method=RequestMethod.POST)
	public ModelAndView  catagoryadd(@ModelAttribute("catagory") Catagory category) {
	catagoryDAO.saveOrUpdate(catagory);
		ModelAndView mv = new ModelAndView("/view");
		mv.addObject("catagory", catagory);  
		mv.addObject("catagoryList",catagoryDAO.list());
		return mv;
	}
	
	@RequestMapping(value ="catagory/delete/{id}")
	public String deletecatagory(@PathVariable("id") int id, ModelMap model) {
		catagoryDAO.delete(id);
		model.addAttribute("desuccess", "Deleted Successfully"); 
		return "catagory";
	}
	
	@RequestMapping(value ="catagory/edit/{id}")
	public String editcatagory(@PathVariable("id") int id, Model model  ) {
		catagory = catagoryDAO.get(id); 
		model.addAttribute("catagory", catagory);
		model.addAttribute("catagoryList",catagoryDAO.list());
		model.addAttribute("editcatagory", "Edit catagory");  
		return "catagory";
	}
	
}

