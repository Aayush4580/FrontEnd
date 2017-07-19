package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.MyCartDAO;
import com.niit.shoppingcart.domain.MyCart;

@Controller
public class MController {

	@Autowired
	MyCart myCart;
	@Autowired
	MyCartDAO myCartDAO;
	
	@RequestMapping("/myCart")
	public ModelAndView  myCart(@RequestParam("id") Long id,@RequestParam("description") String description,@RequestParam("price") double price)
	{
	ModelAndView mv=new ModelAndView("Mobiles");
	myCart.setId(id);
	myCart.setDescription(description);
	myCart.setPrice(price);
	myCartDAO.insert(myCart);
	return mv;
	}
}
