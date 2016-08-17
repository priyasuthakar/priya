package com.niit.appleproduct.dao;

import java.util.List;

import com.niit.appleproduct.models.Product;

public interface ProductDAO {

	public List<Product> list();

	public Product get(int id);

	public void saveOrUpdate(Product product);
	
	public void save(Product product);
	
	public void update(Product product);

	public void delete(int id);
}
