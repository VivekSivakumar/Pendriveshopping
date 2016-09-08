package com.pendriveonlineshopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pendriveonlineshopping.model.Product;
import com.pendriveonlineshopping.services.DataService;

@Controller
public class PendriveController {

	public PendriveController() {
		//super();
		// TODO Auto-generated constructor stub
		System.out.println("inside pendrive controller");
	}
	
	@Autowired
	DataService dataService;
	
	@RequestMapping("/")
	public String homePage() {
		return "Home";
	}
	
	@RequestMapping("/form")
	public ModelAndView gotoProduct(@ModelAttribute("prod")Product prod)
	{
		return new ModelAndView("form");
	}
	
	@RequestMapping(value="addProduct",method=RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("prod")Product prod)
	{
		dataService.insertRow(prod);
		
		return new ModelAndView("form");
	}
	
	@RequestMapping("/list")
	public ModelAndView listProduct()
	{
		
		List<Product> productList=dataService.getList();
		return new ModelAndView("list","productList", productList);
	}
	
	
	@RequestMapping("/Home")
	public String gotoHome(){
		return "Home";
	}
	@RequestMapping("/Signin")
	public String gotoSignin(){
		return "Signin";
	}
	
	@RequestMapping("/Signup")
	public String gotoSignup(){
		return "Signup";
	}
	@RequestMapping("/Aboutus")
	public String gotoAboutus(){
		return "Aboutus";
	}
	
		@RequestMapping("/edit")
		public ModelAndView editProd(@ModelAttribute("prod")Product prod,@RequestParam int id)
		{
			prod=dataService.getRowById(id);
			return new ModelAndView("edit","prdList",prod);
		}
		
		@RequestMapping(value="updateProduct",method=RequestMethod.POST)
		public ModelAndView updateProd(@ModelAttribute("prod")Product prod)
		{
		//prod=dataService.getRowById(id);
		dataService.updateRow(prod);
		return new ModelAndView("redirect:form");
			//return new ModelAndView("list","prod");
		}
		
	@RequestMapping("/deleteProduct")
		public ModelAndView deleteProd(@RequestParam int id)
		{
		dataService.deleteRow(id);
			return new ModelAndView("deleteProduct");
		}
		
		
		
	}
