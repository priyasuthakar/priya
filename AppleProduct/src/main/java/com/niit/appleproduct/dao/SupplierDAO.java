package com.niit.appleproduct.dao;

import java.util.List;

import com.niit.appleproduct.models.Supplier;

public interface SupplierDAO {

	public List<Supplier> list();

	public Supplier get(String id);

	public void saveOrUpdate(Supplier supplier);

	public void delete(String id);
}
