package com.niit.Apple.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {
		
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
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
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
	
}
