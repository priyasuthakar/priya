package com.niit.Apple.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.appleproduct.dao.UserDAO;
import com.niit.appleproduct.models.User;

@Controller
public class UserController {
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

	@Autowired
	private UserDAO userDAO;
	@Autowired
	private User user;

	@RequestMapping("/reg")
	public ModelAndView reg() {
		ModelAndView mv = new ModelAndView("/reg");
		mv.addObject("user", user);
		mv.addObject("isuserClickedRegisterHere", "true");
		return mv;
	}

	@RequestMapping(value = "reg", method = RequestMethod.POST)
	public ModelAndView regpost(@ModelAttribute("user") User user) {
		userDAO.saveOrUpdate(user);
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("successMessage", "You are successfully registered please login with your details");
		return mv;
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("/login");
		mv.addObject("user", user);
		mv.addObject("isuserClickedLoginHere", "true");
		return mv;
	}

	@RequestMapping(value ="login",method=RequestMethod.POST)
	public ModelAndView loginpost(@RequestParam("username")String username,@RequestParam("password")String password, HttpSession session) {
	
		ModelAndView mv= new ModelAndView("Home");
		boolean isValidUser=userDAO.isValidUser(username,password);
		if(isValidUser==true)
		{
			user=userDAO.get(username);
			session.setAttribute("loggedInUser",user.getFirstname());
			if(user.getRole()=="admin")
			{	
				mv.addObject("isAdmin","true");
			}else{
				mv.addObject("isAdmin","false");
				mv.addObject("loginsuccess", "LoggedIn Successfully");
				}	
		}
		else{
			mv.addObject("invalidCredentials","true");
			mv.addObject("errorMessage","Invalid Credentials..! Not Yet Registered");
			}
	return mv;
	}
	@RequestMapping(value = "logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("/Home");
		session.invalidate();
		session = request.getSession(true);
		mv.addObject("loggedOut", "true");
		mv.addObject("logoutsuccess", "Loggedout Successfully");
		return mv;
	}

}
