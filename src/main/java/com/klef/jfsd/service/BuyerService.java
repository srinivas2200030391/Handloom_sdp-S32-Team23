package com.klef.jfsd.service;

import com.klef.jfsd.model.Buyer;

public interface BuyerService {
	public String buyerRegistration(Buyer buyer);
	public Buyer checkBuyerLogin(String email, String password);
	public String updateBuyer(Buyer buyer);

}
