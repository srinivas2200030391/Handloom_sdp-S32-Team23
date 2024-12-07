package com.klef.jfsd.model;

import java.sql.Blob;
import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "product_table")
public class Product {
	@Id
	private int product_id;
	@Column(nullable = false, length = 100)
	private String product_name;
	@Column(nullable = false)
	private double product_cost;
	@Column(nullable = false, length = 250)
	private String product_description;
	@Column(nullable = false)
	private Blob image;
	@Column(nullable = false, length = 50)
	private String product_category;
	@Column(nullable = false)
	private int product_quantity;
	@Column(nullable = false, length = 50)
	private String product_material;
	@Column(nullable = false, length = 50)
	private String product_size;
	@Column(nullable = false, length = 50)
	private String product_color;
	@Column(nullable = false)
	private int artisan_id;
	@Column(nullable = false)
	private Date date_added;
	@Column(nullable = false)
	private boolean is_active;
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public double getProduct_cost() {
		return product_cost;
	}
	public void setProduct_cost(double product_cost) {
		this.product_cost = product_cost;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public int getProduct_quantity() {
		return product_quantity;
	}
	public void setProduct_quantity(int product_quantity) {
		this.product_quantity = product_quantity;
	}
	public String getProduct_material() {
		return product_material;
	}
	public void setProduct_material(String product_material) {
		this.product_material = product_material;
	}
	public String getProduct_size() {
		return product_size;
	}
	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}
	public String getProduct_color() {
		return product_color;
	}
	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}
	public int getArtisan_id() {
		return artisan_id;
	}
	public void setArtisan_id(int artisan_id) {
		this.artisan_id = artisan_id;
	}
	public Date getDate_added() {
		return date_added;
	}
	public void setDate_added(Date date_added) {
		this.date_added = date_added;
	}
	public boolean isIs_active() {
		return is_active;
	}
	public void setIs_active(boolean is_active) {
		this.is_active = is_active;
	}
	

}
