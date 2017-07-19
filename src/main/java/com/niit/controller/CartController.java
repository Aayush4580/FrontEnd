package com.niit.controller;

import java.util.Collection;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.MyCartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.MyCart;
import com.niit.shoppingcart.domain.Product;

import ch.qos.logback.core.net.SyslogOutputStream;

@Controller
public class CartController {
	Logger log = LoggerFactory.getLogger(CartController.class);
	@Autowired
	private MyCartDAO myCartDAO;

	@Autowired
	private MyCart myCart;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private HttpSession session;

	//@SuppressWarnings("unchecked")
	/*@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String myCart(Model model) {
		
		System.out.println("inside mycart==========");
		
		log.debug("Starting of the method myCart");
		
		model.addAttribute("myCart", myCart);
		// get the logged-in user id
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		
		System.out.println("inside mycart2==========");
		
		if (loggedInUserid == null) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			loggedInUserid = auth.getName();
			Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) auth.getAuthorities();
			authorities.contains("ROLE_USER");

		}
		if (loggedInUserid != null) {

			int cartSize = myCartDAO.list(loggedInUserid).size();

			if (cartSize == 0) {
				model.addAttribute("errorMessage", "You do not have any products in your Cart");
			} else {
				model.addAttribute("cartList", myCartDAO.list(loggedInUserid));
				model.addAttribute("totalAmount", myCartDAO.getTotalAmount(loggedInUserid));
				model.addAttribute("displayCart", "true");
				model.addAttribute("cart", myCart);

			}

		}
		log.debug("Ending of the method myCart");
		return "Home";
	}*/

	// For add and update myCart both
	/*@RequestMapping(value = "/myCart/add/{id}", method = RequestMethod.GET)
	public ModelAndView addToCart(@PathVariable("id") String id) {
		log.debug("Starting of the method addToCart");
		
		Product product = productDAO.getProductByID(id);
		myCart.setPrice(product.getPrice());
		myCart.setProductName(product.getName());
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		if (loggedInUserid == null) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			loggedInUserid = auth.getName();
		}
		myCart.setUserID(loggedInUserid);
		// It is not required if you given default value while creating the
		// table
		myCart.setStatus('N'); // Status is New. Once it is Purchased, we can
								// changed to 'P'
		myCart.setQuantity(1);
		myCart.setAddedDate(new Date(System.currentTimeMillis()));

		myCart.setStatus('P');
		// To get sequence number, you can do programmatically in DAOImpl
		// myCart.setId(ThreadLocalRandom.current().nextLong(100, 1000000 + 1));

		// check same product is added earlier.

		if (myCartDAO.getCart(loggedInUserid, myCart.getProductName()) != null) {
			// increate the quantity and update it.
			int presentQuantity = myCartDAO.getQuantity(loggedInUserid, myCart.getProductName());
			myCart.setQuantity(presentQuantity + 1);
			myCartDAO.update(myCart);

		} else {
			myCartDAO.save(myCart);

		}
		myCartDAO.save(myCart);

		// return "redirect:/views/home.jsp";

		ModelAndView mv = new ModelAndView("redirect:/Home");
		mv.addObject("successMessage", " Successfuly add the product to myCart");
		log.debug("Ending of the method addToCart");
		return mv;

	}*/

}
