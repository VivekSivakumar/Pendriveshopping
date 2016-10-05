package com.pendriveonlineshopping.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.google.gson.Gson;
import com.pendriveonlineshopping.model.Category;
import com.pendriveonlineshopping.model.Product;
import com.pendriveonlineshopping.model.Supplier;
import com.pendriveonlineshopping.services.CategoryService;
import com.pendriveonlineshopping.services.DataService;
import com.pendriveonlineshopping.services.SupplierService;

@Controller
public class PendriveController {

	public PendriveController() {
		
		System.out.println("inside pendrive controller");
	}

	@Autowired
	DataService dataService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SupplierService supplierService;
	
	@RequestMapping("/")
	public String homePage() {
		return "Home";
	}
	
private static final String UPLOAD_DIRECTORY ="/img";  
    
    @RequestMapping("uploadform")  
    public ModelAndView uploadForm(){  
        return new ModelAndView("uploadform");    
    }  

	@RequestMapping("/form")
	public ModelAndView gotoProduct(@ModelAttribute("prod")Product prod,ModelMap m) {
		List<Product> productList=dataService.getList();
		Gson gson = new Gson();
		String cjson = gson.toJson(productList);
		m.addAttribute("conj",cjson);
		List<Category> ca=categoryService.getList();
		List<Supplier> su=supplierService.getList();
		m.addAttribute("lstSupplier",su);
		m.addAttribute("lstCat",ca);
		
		m.addAttribute("chkMsg", "hai");
		m.addAttribute("productlist",productList);
		return new ModelAndView("form");
		
	}

	@RequestMapping(value="addProduct",method=RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("prod")Product prod)
	{
		MultipartFile file=prod.getFile();
        String filename=file.getOriginalFilename();  
         String src=""; 
        try{  
        byte barr[]=file.getBytes();  
        BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(new File("F:\\Eclipse workspace\\PendriveOnlineShopping\\src\\main\\webapp\\resources\\upload_images\\"+filename)));  
        bout.write(barr);  
        bout.flush();  
        bout.close();  
        src="/resources/upload_images/"+filename;
        System.out.println("selected image:"+src);
//        req.setAttribute("ïmages", src);
        }
        catch(Exception e)
        {
        	System.out.println(e);
        }  
		dataService.insertRow(prod,src);
		
		return new ModelAndView("form","img",src).addObject("command", new Product());
	}

	

	@RequestMapping("/Home")
	public String gotoHome() {
		return "Home";
	}
	
	@RequestMapping("/prodetail")
	public String gotoprodetail() {
		return "prodetail";
	}
	
	@RequestMapping("/listgrid")
	public ModelAndView lstProduct(ModelMap m)
	{
		List<Product> productList=dataService.getList();
		m.addAttribute("chkMsg", "hello");
		return new ModelAndView("listgrid","productList", productList);
	}
	
	@RequestMapping("/prodsingle")
	public ModelAndView singlProd(@ModelAttribute("prod")Product prod,@RequestParam int id)
	{
		prod=dataService.getRowById(id);
		ModelAndView mv=new ModelAndView("prodsingle","prdList",prod);
		mv.setViewName("prodsingle");
		
		return mv.addObject("command", prod);
	}
	
	@RequestMapping("/addr")
	public String gotoaddr() {
		return "addr";
	}
	
	@RequestMapping("/cart")
	public String gotocart() {
		return "cart";
	}


	@RequestMapping("/Signin")
	public String gotoSignin() {
		return "Signin";
	}

	@RequestMapping("/Signup")
	public String gotoSignup() {
		return "Signup";
	}

	@RequestMapping("/Aboutus")
	public String gotoAboutus() {
		return "Aboutus";
	}

	@RequestMapping("/edit")
	public ModelAndView editProd(@ModelAttribute("prod")Product prod,@RequestParam int id)
	{
		prod=dataService.getRowById(id);
		ModelAndView mv=new ModelAndView("edit","prdList",prod);
		mv.setViewName("edit");
		
		return mv.addObject("command", prod);
	}
	
	@RequestMapping(value="updateProduct",method=RequestMethod.POST)
	public ModelAndView updateProd(@ModelAttribute("prod")Product prod)
	{

	dataService.updateRow(prod);
	return new ModelAndView("redirect:form");

	}
	
@RequestMapping("/deleteProduct")
	public ModelAndView deleteProd(@RequestParam int id)
	{
	dataService.deleteRow(id);
		return new ModelAndView("redirect:form");
	}
		
}