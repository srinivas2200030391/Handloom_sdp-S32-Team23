package com.klef.jfsd.model;

import java.sql.Blob;
import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "artisan_table")
public class Artisan {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "artisan_id")
	private int id;
	@Column(name = "artisan_name",nullable = false,length = 100)
	private String name;
	@Column(name = "artisan_email",nullable = false,unique = true,length = 100)
	private String email;
	@Column(name = "artisan_password",nullable = false,length = 100)
	private String password;
	@Column(name = "artisan_contactno",nullable = false,unique = true,length = 20)
	private String contactno;
	@Column(name = "artisan_address",nullable = false,length = 200)
	private String address;
	@Column(name = "artisan_city",nullable = false,length = 100)
	private String city;
	@Column(name = "artisan_country",nullable = false,length = 100)
	private String country;
	@Column(name = "artisan_pfp",nullable = false)
	private Blob image;
	@Column(name = "artisan_joindate",nullable = false)
	private Date join_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	
	

}
