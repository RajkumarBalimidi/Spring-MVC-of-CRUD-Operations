package com.mvc.hibernate.manager;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.mvc.entity.Customer;

public class HibernateManager {
       private static Customer customer;
	   private Session session;
	   static ArrayList<Customer> customerList;
	   
	   public HibernateManager() 
	   {
	      session = new Configuration()
	               .configure("hibernate.cfg.xml") // Load the configuration file
	               .addAnnotatedClass(Customer.class)  // Register the User entity class
	               .buildSessionFactory().openSession();
	   }
	   
	   public String insertCustomer(Customer c) {
		   session.beginTransaction();
		   session.persist(c);
		   session.getTransaction().commit();
		   return "success";
	   }
	  
	   public Customer getCustomerByEmail(String email) {
		   customerList = (ArrayList<Customer>) session.createQuery("from Customer where email='"+email+"'").list();
		   for(Customer c : customerList)
		   {
			   return c;
		   }
		return null;
		   
	   }
	   
	   public int updatePassword(String email, String npassword, String cpassword){
		   customer = getCustomerByEmail(email);
		   if(customer != null)
		   {
			   if(npassword.equals(cpassword))
			   {
				   session.beginTransaction();
				   customer.setPassword(npassword);
				   session.merge(customer);
				   session.getTransaction().commit();
				   return 1;
			   }
			   else
			   {
				   return -1;
			   }
		   }
		   return 0;
	   }
	   
	   public ArrayList<Customer> fetchAllCustomers() {
		   customerList = (ArrayList<Customer>) session.createQuery("from Customer").list();
		   return customerList;
	   }
	   
	   public Customer fetchById(int id) {
	       customer = session.find(Customer.class, id);
		   return customer;
	   }
	   
	   public int updateById(int id, String name, String email, String mobile) {
	       customer = session.find(Customer.class, id);
	       
	       if(customer != null) {
	           session.beginTransaction();
	           customer.setName(name);
	           customer.setEmail(email);
	           customer.setMobile(mobile);
	           session.merge(customer); // Use merge instead of persist for updates
	           session.getTransaction().commit();
	           
	           return 1;

	       } else {
	           return 0;
	       }
	   }
	   
	   public int deleteById(int id) {
	       customer = session.find(Customer.class, id);
		   if(customer != null)
		   {
			   session.beginTransaction();
			   session.delete(customer);
			   session.getTransaction().commit();
			   
			   return 1;
		   }
		   else
		   {
			   return 0;
		   }
	   }

}
