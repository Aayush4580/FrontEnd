package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.User;

@Controller
public class UserController {
	@Autowired UserDAO userDAO;
	@Autowired User user;
	
	//get the user id and password from login page
	//send those values to userDAO.validate
	//based on response,you can navigate either to login or to home page
	
	@RequestMapping("/validate")
	public ModelAndView login(@RequestParam("userName") String id,@RequestParam("password") String password)
	
	{
		System.out.println("Hello:"+id);
		ModelAndView mv=new ModelAndView("/Home");
		if(userDAO.validate(id, password)==true)
		{
			
			userDAO.get(id);
			mv.addObject("message","Welcome"+user.getName());
			
		}
		else
		{
			mv.addObject("message", "wrong credentials");
		}
		return null;
		
	}

}
