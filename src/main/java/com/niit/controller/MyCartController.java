package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.MyCartDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.MyCart;

@Controller
public class MyCartController {

	@Autowired
	MyCart myCart;
	@Autowired
	MyCartDAO myCartDAO;
	@Autowired
	Category category;
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/myCart")
	public ModelAndView  myCart(@RequestParam("description") String description,@RequestParam("price") double price)
	{
	ModelAndView mv=new ModelAndView("Mobiles");
	/*myCart.setId(id);*/
	myCart.setDescription(description);
	myCart.setPrice(price);
	myCartDAO.insert(myCart);
	mv.addObject("categoryList", categoryDAO.list());
	mv.addObject("category", category);
	return mv;
	}
	
	@RequestMapping("/viewCart")
	public  ModelAndView gotoMyCArt()
	
	{
		ModelAndView mv = new ModelAndView("ViewCart");
		//model.addAttribute("message", "Thank you for visiting Shopping Cart");
		mv.addObject("cartItems", myCartDAO.getAllItems());
		mv.addObject("myCart", myCart);
		
		return mv;
	}
	
	@GetMapping("/delete_cart_items/{id}")
	public ModelAndView deleteCart(@PathVariable("id") Long id)
	{
		
	
		ModelAndView mv = new ModelAndView("redirect:/viewCart");
		
		//check whether products are there for this category or not
		/*int size = productDAO.getAllProductsByCategoryID(id).size();
		if(size!=0)
		{
			log.debug("Few products are there under this category. you can not delete");
			 mv.addObject("message", size+ " products are there under category" + id +". you can not delete");
			 session.setAttribute("message", size+ " products are there under category" + id +". you can not delete");
			 return mv;
		}*/
		
		
		
		 if( myCartDAO.delete(id))
		 {
			 mv.addObject("message", "successfully deleted the Cart");
		 }
		 else
		 {
			 mv.addObject("message", "Not able to delte the Cart");
		 }
		 
		
		 
		 return mv;
		
	}
	
	@RequestMapping("/buy")
	public ModelAndView buy()
	{
		ModelAndView mv=new ModelAndView("Buy");
		
		
		return mv;
	}
	
}
