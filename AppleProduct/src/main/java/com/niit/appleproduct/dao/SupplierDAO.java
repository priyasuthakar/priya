package com.niit.appleproduct.dao;

import java.util.List;

import com.niit.appleproduct.models.Supplier;

public interface SupplierDAO {

	public List<Supplier> list();

	public Supplier get(int id);

	public void saveOrUpdate(Supplier supplier);
	
	/*public void save(Supplier supplier);
	*/
	public void update(Supplier supplier);

	public void delete(int id);
}
