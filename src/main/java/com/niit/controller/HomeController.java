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
		mv.addObject("message", "Thank you for visiting Shopping Cart. Please login to Continue...");
		
		return mv;
	}
	
	
	@RequestMapping(value="/Login",method=RequestMethod.GET)
	public String loginPage(Model model)
	{
		model.addAttribute("isUserClickedLogin", "true");
	
		return "Home";
	}
	
	@RequestMapping("/Registration")
	public String registrationPage(Model model)
	{
		model.addAttribute("isUserClickedRegister", "true");
		
		return "Home";
	}
	@RequestMapping("/Contact")
	public String contactPage(Model model)
	{
		model.addAttribute("isUserClickedContact", "true");
		
		return "Home";
	}
	@RequestMapping("/Home")
	public String WebSiteName(Model model)
	{
		model.addAttribute("isUserClickedWebSiteName", "true");
		
		return "Home";
	}

	@RequestMapping("/hello")
	public  ModelAndView goToHello()
	
	{
		ModelAndView mv = new ModelAndView("hello");
		//model.addAttribute("message", "Thank you for visiting Shopping Cart");
		mv.addObject("message", "Thank you for visiting Shopping Cart");
		
		return mv;
	}

	@RequestMapping("/productpage")
	public  ModelAndView goproductpage()
	
	{
		ModelAndView mv = new ModelAndView("productpage");
		//model.addAttribute("message", "Thank you for visiting Shopping Cart");
		
		
		return mv;
	}

}
