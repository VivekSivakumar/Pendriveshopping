package com.pendriveonlineshopping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PendriveController {

	public PendriveController() {
		//super();
		// TODO Auto-generated constructor stub
		System.out.println("inside pendrive controller");
	}
	
	@RequestMapping("/")
	public String homePage(){
		return "Home";
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
}
