package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.Supplier;

@Controller
public class SupplierController {
	private static  Logger log = LoggerFactory.getLogger(SupplierController.class);

	@Autowired  CategoryDAO categoryDAO;
	
	@Autowired  Category category;
	
	@Autowired  ProductDAO productDAO;
	
	@Autowired  Product product;
	
	@Autowired  Supplier supplier;
	
	@Autowired  SupplierDAO supplierDAO;
	
	@Autowired  HttpSession session;

	@GetMapping("/manage_supplier_add")
	public ModelAndView  createSupplier(/*HttpServletRequest request,
            @RequestParam CommonsMultipartFile[] fileUpload,*/@RequestParam("id") String id,@RequestParam("name") String name,@RequestParam("address") String address,RedirectAttributes redirectAttributes)
	{
		log.debug("Starting of the method manageCategories");
		//setting the name for the suppliers
		supplier.setId(id);
		supplier.setName(name);
		supplier.setAddress(address);
		
		
		ModelAndView mv = new ModelAndView("redirect:/manageSupplier");
		
		
		/*for (CommonsMultipartFile aFile : fileUpload){
            
            System.out.println("Saving file: " + aFile.getOriginalFilename());
             
           
            Supplier supplier = new Supplier();
            supplier.setName(aFile.getOriginalFilename());
            supplier.setImage(aFile.getBytes());
            supplierDAO.save(supplier); 
        }*/
				//Before calling save method, check whether the category id already exist in db or not
				//if it is does not exist, then only call save method
				if (supplierDAO.getSupplierByID(id) !=null)
				{
					//category already exist
					mv.addObject("message", "Supplier already exist with this id " +id);
					return mv;
					
				}
				else  // actualy else is not required if return statement is there in if condition
				{
					supplierDAO.save(supplier);
					mv.addObject("message", "Category created successfuly ");
				}
				
				
				session.setAttribute("supplierList", supplierDAO.list());
				session.setAttribute("Supplier", supplier);
				
			
				
				log.debug("End of the method manageSupplier");
				
				return mv;
	}
	
	/*@RequestMapping(value = "/manage_supplier_add", method = RequestMethod.GET)
    public String handleFileUpload(HttpServletRequest request,
            @RequestParam CommonsMultipartFile[] fileUpload) throws Exception {
          
        if (fileUpload != null && fileUpload.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload){
                  
                System.out.println("Saving file: " + aFile.getOriginalFilename());
                 
               
                Supplier supplier = new Supplier();
                supplier.setName(aFile.getOriginalFilename());
                supplier.setImage(aFile.getBytes());
                supplierDAO.save(supplier); 
            }
        }
  
        return "Success";
    }*/
	@RequestMapping("/manage_supplier_edit/{id}")
	public ModelAndView editCategory(@PathVariable("id") String id )
	{
		
		log.debug("Starting of the method editSupplier");
		
		log.debug("Going to edit the supplier : " + id);
		 supplier=  supplierDAO.getSupplierByID(id);
		 //selected category details we have to store in another instance
		 // in ModelAndView instance
		 
		 ModelAndView mv = new ModelAndView("redirect:/manageSupplier");
		 session.setAttribute("selectedSupplier", supplier);
		 mv.addObject("selectedSupplier", supplier);
		 log.debug("Ending of the method editSupplier");
		 return mv;
		
		
	}
	@PostMapping("/manage_supplier_update")
	public ModelAndView  updateCategory(@RequestParam("id") String id, 
			@RequestParam("name") String name,  @RequestParam("address") String address)
	{
		
		log.debug("Starting of the method updateCategory");
		supplier.setId(id);
		supplier.setName(name);
		supplier.setAddress(address);
		
		ModelAndView mv = new ModelAndView("redirect:/manageSupplier");
		
		/*mv.addObject("isAdminClickedCategories", "true");
		mv.addObject("isAdmin", "true");*/
		
		//Before calling save method, check whether the category id already exist in db or not
		
		//if it is does not exist, then only call save method
		
		if (supplierDAO.getSupplierByID(id) ==null)
		{
			//category does not exist
			mv.addObject("message", "Supplier does not exist with this id " +id);
			return mv;
			
		}
		else  // actualy else is not required if return statement is there in if condition
		{
			supplierDAO.update(supplier);
			mv.addObject("message", "Supplier update successfuly ");
		}
		
		
		session.setAttribute("supplierList", supplierDAO.list());
		session.setAttribute("supplier", supplier);
		
	
		
		log.debug("End of the method updateSupplier");
		
		return mv;
		
		
		
	}
	
	@GetMapping("/manage_supplier_delete/{id}")
	public ModelAndView deleteSupplier(@PathVariable("id") String id)
	{
		
		log.debug("Starting of the method deleteSupplier");
		log.debug("You are going to delete " + id);
		ModelAndView mv = new ModelAndView("redirect:/manageSupplier");
		
		//check whether products are there for this category or not
		/*int size = supplierDAO.getSupplierByID(id).size();
		if(size!=0)
		{
			log.debug("Few products are there under this category. you can not delete");
			 mv.addObject("message", size+ " products are there under category" + id +". you can not delete");
			 session.setAttribute("message", size+ " products are there under category" + id +". you can not delete");
			 return mv;
		}*/
		
		
		
		 if( supplierDAO.delete(id))
		 {
			 mv.addObject("message", "successfully deleted the Supplier");
		 }
		 else
		 {
			 mv.addObject("message", "Not able to delte the Supplier");
		 }
		 
			session.setAttribute("supplierList", categoryDAO.list());
			session.setAttribute("Supplier", supplier);
			
		
			log.debug("Ending of the method deleteSupplier");
		 
		 return mv;
		
	}
	   
	
	
	
}
