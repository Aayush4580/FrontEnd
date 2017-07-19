package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.MyCartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.MyCart;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.User;

@Controller
public class UserController {
private static Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired UserDAO userDAO;
	@Autowired User  user;
	
	
	@Autowired CategoryDAO categoryDAO;
	
	@Autowired  Category  category;

	@Autowired ProductDAO productDAO;
	
	@Autowired  Product  product;
	
	@Autowired  MyCart  myCart;
	
	@Autowired  MyCartDAO  myCartDAO;
	
	@Autowired  HttpSession session;
	
	//get the user id and password from login page
	//send those values to userDAO.validate
	//based on response,you can navigate either to login or to home page
	
	@RequestMapping("/validate")
	public ModelAndView login(@RequestParam("userName") String id,@RequestParam("password") String password)
	
	{
		log.debug("Starting of the method login");
		
		log.info("You are login with the id "+id);
		ModelAndView mv=new ModelAndView("/Home");
		if(userDAO.validate(id, password)==true)
		{
			String loggedInUserid = (String) session.getAttribute("loggedInUserID");

			log.debug("Valid credentials");
			 
			 user = userDAO.get(id);
			mv.addObject("message","Welcome "+user.getName());
			
			mv.addObject("categoryList", categoryDAO.list());
			 mv.addObject("category", category);
			 
			//store the user id in the session
			 session.setAttribute("loggedInUserid", id);
//check whether user is customer or admin
			 
			 if(user.getRole().equals("ROLE_ADMIN"))
			 {
				 log.debug("You are admin");
				 mv.addObject("isAdmin", "true");
				 session.setAttribute("role", "ROLE_ADMIN");
			 }
			 else
			 {
				 log.debug("You are customer");
				 /*mv.addObject("isAdmin", "false");*/
				 mv.addObject("isUser", "true");
				 session.setAttribute("role", "ROLE_USER");
			 }
		}
		else
		{
			log.debug("Invalid user");
			 mv.addObject("message", "Invalid credentials..please try again.");
		}
		log.debug("Ending of the method login");
		return mv;
		
	}

	
	@RequestMapping("/Mobiles")
	public  ModelAndView goproductpage()
	
	{
		ModelAndView mv = new ModelAndView("Mobiles");
		//model.addAttribute("message", "Thank you for visiting Shopping Cart");
		mv.addObject("categoryList", categoryDAO.list());
		mv.addObject("category", category);
		
		return mv;
	}
	@RequestMapping("/productDisplay")
	public  ModelAndView gotoproduct()
	
	{
		ModelAndView mv = new ModelAndView("ProductDisplay");
		//model.addAttribute("message", "Thank you for visiting Shopping Cart");
		mv.addObject("productList", productDAO.getAllProducts());
		mv.addObject("product", product);
		
		return mv;
	}
	
}
