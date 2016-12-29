package com.pendriveonlineshopping.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.ui.Model;
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
import com.pendriveonlineshopping.validator.ProValid;

@Controller
public class PendriveController {

	public PendriveController() {
		
		System.out.println("inside pendrive controller");
	}

	@Autowired
	ProValid proValid;
	
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
	public ModelAndView saveProduct(@Valid @ModelAttribute("prod")Product prod,BindingResult bind, Model s, HttpServletRequest req)
	{
		MultipartFile file=prod.getFile();
        String filename=file.getOriginalFilename();  
         String src=""; 
        try{  
        byte barr[]=file.getBytes();  
        BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(new File("F:\\work space\\PendriveOnlineShopping\\src\\main\\webapp\\resources\\upload_images\\"+filename)));  
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
        s.addAttribute("prod",prod);
		proValid.validate(prod,bind);
		if(bind.hasErrors())
		{
		 return new ModelAndView("form");	 
		}
		else
		{
		dataService.insertRow(prod,src);
		
		return new ModelAndView("form","img",src).addObject("command", new Product());
	}
	}
	

	@RequestMapping("/Home")
	public String gotoHome() {
		return "Home";
	}
	
	
	@RequestMapping("/listgrid")
	public ModelAndView lstProduct(ModelMap m)
	{
		List<Product> productList=dataService.getList();
		m.addAttribute("chkMsg", "hello");
		return new ModelAndView("listgrid","productList", productList);
	}
	
	
	@RequestMapping("/addr")
	public String gotoaddr() {
		return "addr";
	}
	
	@RequestMapping("/cartdetails")
	public String gotocart() {
		return "cartdetails";
	}

	@RequestMapping("/edu")
	public ModelAndView gotoProduct(@ModelAttribute ("prod")Product prod,Model m)
	{
		List prodLt=dataService.getList();
		return new ModelAndView("edu","Products",prodLt);
	}
	
	@RequestMapping("/Signin")
	public String gotoSignin(@RequestParam(value="error",required = false) String error, @RequestParam(value="logout",required = false) String logout, Model model) {
		if(error!=null)
		{
			model.addAttribute("error","Invalid credentials");
		}
		if(logout!=null)
		{
			model.addAttribute("msg", "You logged out successfully...");
		}
		return "Signin";
	}
	
	@RequestMapping("/admin")
	public String gotoadmin() {
		return "admin";
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
	public ModelAndView editProd(@ModelAttribute("prod")Product prod,@RequestParam int id,ModelMap m)
	{
		prod=dataService.getRowById(id);
		List<Category> ca=categoryService.getList();
		List<Supplier> su=supplierService.getList();
		m.addAttribute("lstSupplier",su);
		m.addAttribute("lstCat",ca);
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