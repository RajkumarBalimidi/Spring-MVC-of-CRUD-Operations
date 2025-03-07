package com.mvc.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.entity.Customer;
import com.mvc.hibernate.manager.HibernateManager;

@Controller
public class NewController {

	private static HibernateManager hm = new HibernateManager();
	
	@RequestMapping("/Register")
	public String newRegister(@ModelAttribute("customer") Customer customer) {
		hm.insertCustomer(customer);
		return "login";
	}
	
	@RequestMapping("/LoginForm")
	public String loginForm(@RequestParam("username") String username,@RequestParam("password") String password, Model model) {
		Customer customer = hm.getCustomerByEmail(username);
		
		if(customer != null)
		{
			if(password.equals(customer.getPassword()))
			{
			    ArrayList<Customer> customers = hm.fetchAllCustomers();
			    model.addAttribute("customer", customer);
			    model.addAttribute("customers", customers);
				return "home";
			}
			else
			{
				model.addAttribute("notMatched", "Invalid Credentials");
				return "login";
			}
		}
		else
		{
			model.addAttribute("notMatched", "Register Now");
			return "login";			
		}
	}
	
	
	@RequestMapping("/ForgotPassword")
	public String forgotPassword(@RequestParam("email") String email,@RequestParam("npassword") String npassword,@RequestParam("cpassword") String cpassword, Model model) {
		int status = hm.updatePassword(email, npassword, cpassword);
		if(status == 1)
		{
			return "login";
		}
		else if(status == -1)
		{
			model.addAttribute("notRegister", "Confirm Password Not Macthed");
			return "forgot";
		}
		else
		{
			model.addAttribute("notRegister", "Please Register Now");
			return "forgot";
		}
	}

	@RequestMapping("/editById")
	public String fetchById(@RequestParam("eid") String id, Model model) {
		Customer c = hm.fetchById(Integer.parseInt(id));
		model.addAttribute("customer",c);
		return "edit";
	}
	
	@RequestMapping("/EditById")
	public String updateddById(@RequestParam("id") int id ,
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("mobile") String mobile,
			Model model)
	{
		int status = hm.updateById(id, name, email, mobile);
		if(status == 1)
		{
		    ArrayList<Customer> customers = hm.fetchAllCustomers();
            model.addAttribute("customers", customers);
            return "home";			
		}
		else
		{
			return "noFound";
		}
	}
	
//	@RequestMapping("/Success")
//	public String successPage() {
//		return "home";
//	} 
	
	@RequestMapping("/deleteById")
	public String deleteById(@RequestParam("did") int id, Model model) {
		int status = hm.deleteById(id);
		if(status == 1)
		{
		    ArrayList<Customer> customers = hm.fetchAllCustomers();
            model.addAttribute("customers", customers);
            return "home";
		}
		else
        {
            return "home";
        }
	}
	
	@RequestMapping("/logout")
	public String logout(Model model) {
	    return "login";
	}
	
}
