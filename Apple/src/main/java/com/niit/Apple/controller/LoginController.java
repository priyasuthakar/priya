package com.niit.Apple.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.appleproduct.dao.CatagoryDAO;
import com.niit.appleproduct.dao.UserDAO;
import com.niit.appleproduct.models.Catagory;
import com.niit.appleproduct.models.User;

@Controller
public class LoginController {
	@Autowired
	Catagory catagory;

	@Autowired
	User user;
		
	@Autowired
	CatagoryDAO catagoryDAO;

	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/")
	public String home() {
		return "Home";
	}

	@RequestMapping("/Home")
	public String home1() {
		return "Home";
	}

	@RequestMapping("/product")
	public String desktop() {
		return "product";
	}

	@RequestMapping(value = "user/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute User user) {
		userDAO.saveOrUpdate(user);
		ModelAndView mv  = new ModelAndView("/home");
		mv.addObject( "successMessage","You are successfully registered please login with your details");
		return mv;
	}	
	
	@RequestMapping("/login")
	public ModelAndView loginHere(){
		ModelAndView mv =new ModelAndView("/home");
		mv.addObject("user", new User());
		mv.addObject("isUserClickedLoginHere", "true");
		mv.addObject("message", "You are successfully logged in");
		return mv;
	}

	@RequestMapping("/reg")
	public ModelAndView registerHere(){
		ModelAndView mv =new ModelAndView("/home");
		mv.addObject("user", user);
		mv.addObject("isUserClickedRegisterHere", "true");
     	mv.addObject("message", "You are successfully registered");
		return mv;
	}

	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		return "logout";
	}
		
	@RequestMapping("/catagoryadmin")
	public String catagoryadmin() {
		return "catagoryadmin";
	}
	
	@RequestMapping("/supplieradmin")
	public String supplieradmin() {
		return "supplieradmin";
	}
	
	@RequestMapping("/productadmin")
	public String productadmin() {
		return "productadmin";
	}
	
	@RequestMapping("/add")
	public String add() {
		return "add";
	}
	
	@RequestMapping("/add1")
	public String add1() {
		return "add1";
	}
	
	@RequestMapping("/add2")
	public String add2() {
		return "add2";
	}
	
	@RequestMapping("/edit")
	public String edit() {
		return "edit";
	}
	
	@RequestMapping("/edit1")
	public String edit1() {
		return "edit1";
	}
	
	@RequestMapping("/edit2")
	public String edit2() {
		return "edit2";
	}

	@RequestMapping("/view")
	public String view() {
		return "view";
	}

	@RequestMapping("/view1")
	public String view1() {
		return "view1";
	}

	
	@RequestMapping("/view2")
	public String view2() {
		return "view2";
	}
	
	
}
