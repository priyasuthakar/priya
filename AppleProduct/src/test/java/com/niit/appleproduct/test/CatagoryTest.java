package com.niit.appleproduct.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.appleproduct.dao.CatagoryDAO;
import com.niit.appleproduct.models.Catagory;

public class CatagoryTest {
	public static void main(String arg[]) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.appleproduct");
		context.refresh();
		
		CatagoryDAO catagoryDAO = (CatagoryDAO) context.getBean("catagoryDAO");
		Catagory catagory = (Catagory) context.getBean("catagory");
		catagory.setId("ID01");
		catagory.setName("IPhone_6s");
		catagory.setDiscription("Phone");
		
		catagory.setId("ID02");
		catagory.setName("IPhone_5s");
		catagory.setDiscription("Phone");
		catagoryDAO.saveOrUpdate(catagory);
		
		
	}

}