package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.domain.Category;
@Controller
public class HomeController {
	
	//http://localhost:8080/ShoppingCart/
	@Autowired HttpSession Session;
	@Autowired Category Category;
	@Autowired CategoryDAO categoryDAO;
	@RequestMapping("/")
	public  ModelAndView goToHome()
	
	{
		ModelAndView mv = new ModelAndView("Home");
		//model.addAttribute("message", "Thank you for visiting Shopping Cart");
		mv.addObject("message", "Thank you for visiting Shopping Cart");
		
		return mv;
	}
	
	
	@RequestMapping(value="/Login",method=RequestMethod.GET)
	public String loginPage(Model model)
	{
		model.addAttribute("isUserClickedLogin", "true");
	
		return "Login";
	}
	
	@RequestMapping("/Registration")
	public String registrationPage(Model model)
	{
		model.addAttribute("isUserClickedRegister", "true");
		
		return "Home";
	}


}
