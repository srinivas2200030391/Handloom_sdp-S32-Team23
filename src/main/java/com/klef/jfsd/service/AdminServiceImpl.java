package com.klef.jfsd.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Buyer;
import com.klef.jfsd.repository.AdminRepository;
import com.klef.jfsd.repository.BuyerRepository;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
    private BuyerRepository buyerRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Override
	public List<Buyer> viewAllBuyers() {
		return buyerRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
	}

	@Override
	public long buyercount() {
		return buyerRepository.count();
	}

	@Override
	public String deleteBuyer(int id) {
		buyerRepository.deleteById(id);
		return "Buyer Deleted Successfully!";
	}

	@Override
	public Buyer displayBuyerById(int id) {
		return buyerRepository.findById(id).get();
	}
    

}
