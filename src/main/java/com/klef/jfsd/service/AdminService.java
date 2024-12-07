package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Buyer;

public interface AdminService {
	public List<Buyer> viewAllBuyers();
	public Admin checkAdminLogin(String uname, String pwd);
	public long buyercount();
	
	public String deleteBuyer(int id);
	
	public Buyer displayBuyerById(int id);
	

}
