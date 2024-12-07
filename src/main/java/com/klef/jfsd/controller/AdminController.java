package com.klef.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Buyer;
import com.klef.jfsd.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView("adminhome");
		long count = adminService.buyercount();
		mv.addObject("count", count);
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkAdminLogin(auname, apwd);
		
		if(admin != null) {
			
			mv.setViewName("adminhome");
			long count = adminService.buyercount();
			mv.addObject("count", count);
			
		}else{
			
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;	
	}
	@GetMapping("viewallbuyers")
	public ModelAndView viewallbuyers() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallbuyers");
		long count = adminService.buyercount();
		mv.addObject("count", count);
		List<Buyer> buyers = adminService.viewAllBuyers();
		mv.addObject("buyerlist", buyers);
		return mv;	
	}
	@GetMapping("deletebuyer")
	public ModelAndView deletebuyer() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deletebuyer");
		List<Buyer> buyers = adminService.viewAllBuyers();
		mv.addObject("buyerlist", buyers);
		return mv;
	}
	@GetMapping("delete")
	public String delete(@RequestParam int id) {
		adminService.deleteBuyer(id);
		return "redirect:/deletebuyer";
		
	}
	@GetMapping("viewbuyerbyid")
	public ModelAndView viewbuyerbyid() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Buyer> buyers = adminService.viewAllBuyers();
		mv.addObject("buyerlist", buyers);
		
		mv.setViewName("viewbuyerbyid");
		return mv;
	}
	@PostMapping("displaybuyer")
	public ModelAndView displaybuyer(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		Buyer buyer = adminService.displayBuyerById(id);
		ModelAndView mv = new ModelAndView("displaybuyer");
		mv.addObject("b", buyer);
		return mv;
		
	}
	

}
