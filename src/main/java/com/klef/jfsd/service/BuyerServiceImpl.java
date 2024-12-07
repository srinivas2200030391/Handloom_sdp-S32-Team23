package com.klef.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Buyer;
import com.klef.jfsd.repository.BuyerRepository;

@Service
public class BuyerServiceImpl implements BuyerService{
	
	@Autowired
	private BuyerRepository buyerRepository;

	@Override
	public String buyerRegistration(Buyer buyer) {
		buyerRepository.save(buyer);
		 return "Buyer registered successfully!";
		
	}

	@Override
	public Buyer checkBuyerLogin(String email, String password) {
		return buyerRepository.checkBuyerLogin(email, password);
	}

	@Override
	public String updateBuyer(Buyer buyer) {
		Buyer b = buyerRepository.findById(buyer.getId()).get();
		b.setContact(buyer.getContact());
		b.setDateofbirth(buyer.getDateofbirth());
		b.setGender(buyer.getGender());
		b.setLocation(buyer.getLocation());
		b.setName(buyer.getName());
		b.setPassword(buyer.getPassword());
		
		buyerRepository.save(b);
		
		return "Buyer Updated Successfully!";
	}

}
