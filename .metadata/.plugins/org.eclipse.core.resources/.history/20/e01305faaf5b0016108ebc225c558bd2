package com.niit.Apple.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.appleproduct.dao.UserDAO;
import com.niit.appleproduct.models.User;


@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;
	
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value = "username") String username,
			 @RequestParam(value = "password") String password,
			HttpSession session) {
		
		ModelAndView mv = new ModelAndView("/home");
		boolean isValidUser = userDAO.isValidUser(username, password);
		
		if (isValidUser == true) {
			System.out.println("Logged In");
			user = userDAO.get(username);
			session.setAttribute("loggedInUser", user.getUsername());
			if (user.getUsername() == "admin") {
				System.out.println("Admin");
				mv.addObject("isAdmin", "true");
			} else {
				System.out.println("User");
				mv.addObject("isAdmin", "false");
			}
		} else {
			System.out.println("Invalid Credentials");
			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid Credentials");
		}
		
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("/home");
		session.invalidate();
		session = request.getSession(true);
		mv.addObject("logoutMessage", "You are successfully logged out");
		mv.addObject("loggedOut", "true");
		
		return mv;
	}

}
