package com.klef.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.Buyer;
import com.klef.jfsd.service.BuyerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class BuyerController {
	@Autowired
	private BuyerService buyerService;
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("buyerreg")
	public ModelAndView buyerreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("buyerreg");
		return mv;
	}
	@GetMapping("buyerprofile")
	public ModelAndView buyerprofile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("buyerprofile");
		return mv;
	}
	@GetMapping("buyerhome")
	public ModelAndView buyerhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("buyerhome");
		return mv;
	}
	@PostMapping("insertbuyer")
	public ModelAndView insertbuyer(HttpServletRequest request) {
	    String name = request.getParameter("bname");
	    String gender = request.getParameter("bgender");
	    String dob = request.getParameter("bdob");
	    String email = request.getParameter("bemail");
	    String location = request.getParameter("blocation");
	    String contact = request.getParameter("bcontact");
	    String password = request.getParameter("bpwd");

	    // Debug print
	    System.out.println("Email: " + email);

	    // Check for null values
	    if (email == null || email.isEmpty()) {
	        throw new IllegalArgumentException("Email must not be null or empty");
	    }

	    Buyer buyer = new Buyer();
	    buyer.setName(name);
	    buyer.setGender(gender);
	    buyer.setDateofbirth(dob);
	    buyer.setLocation(location);
	    buyer.setContact(contact);
	    buyer.setPassword(password);
	    buyer.setEmail(email); // Ensure this is set

	    String message = buyerService.buyerRegistration(buyer);

	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("regsuccess");
	    mv.addObject("message", message);
	    return mv;
	}
	@GetMapping("buyerlogin")
	public ModelAndView buyerlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("buyerlogin");
		return mv;
	}
	@PostMapping("checkbuyerlogin")
	public ModelAndView checkbuyerlogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    String bemail = request.getParameter("bemail");
	    String bpwd = request.getParameter("bpwd");

	    Buyer buyer = buyerService.checkBuyerLogin(bemail, bpwd);

	    if (buyer != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("buyer", buyer); // Ensure this is set
	        mv.setViewName("buyerhome");
	    } else {
	        mv.setViewName("buyerlogin");
	        mv.addObject("message", "Login Failed");
	    }
	    return mv;
	}
	
	@GetMapping("updatebuyerprofile")
	public ModelAndView updatebuyerprofile() {
		ModelAndView mv = new ModelAndView("updatebuyerprofile");
		return mv;
		
	}
	
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("bid"));
		
		ModelAndView mv = new ModelAndView("");
		String name = request.getParameter("bname");
	    String gender = request.getParameter("bgender");
	    String dob = request.getParameter("bdob");
	    String location = request.getParameter("blocation");
	    String contact = request.getParameter("bcontact");
	    String password = request.getParameter("bpwd");
	    
	    Buyer buyer = new Buyer();
	    buyer.setId(id);
	    buyer.setName(name);
	    buyer.setGender(gender);
	    buyer.setDateofbirth(dob);
	    buyer.setLocation(location);
	    buyer.setContact(contact);
	    buyer.setPassword(password);
	    
	    buyerService.updateBuyer(buyer);
	    
	    mv.setViewName("buyerlogin");
	    
		return mv;
		
	}

	@GetMapping("buyerlogout")
	public ModelAndView buyerlogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("buyerlogin");
		return mv;
	}



}
