package com.mvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.entity.Customer;
import com.mvc.hibernate.manager.HibernateManager;

@Controller
public class HomeController {
	
	private static List<Customer> customerList; 
	
	@RequestMapping("/")
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping("/**")
	public String notFound() {
		return "notFound";
	}
	@RequestMapping("/register") 
	public String register(Model model) {
		model.addAttribute(new Customer());
		return "register";
	}
	
	@RequestMapping("/forgot")
	public String forgotPassword() {
		return "forgot";
	}
	
	
}
