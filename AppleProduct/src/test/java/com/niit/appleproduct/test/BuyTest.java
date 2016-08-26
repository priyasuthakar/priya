package com.niit.appleproduct.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.appleproduct.dao.BuyDAO;
import com.niit.appleproduct.models.Buy;

public class BuyTest {
	public static void main(String arg[]) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.appleproduct");
		context.refresh();
		BuyDAO buyDAO = (BuyDAO) context.getBean("buyDAO");
		Buy buy = (Buy) context.getBean("buy");
		buy.setId(0);
		buy.setNo("34567897654327");
		buy.setMy("0910");
		buy.setName("priya");
		buy.setCvv("987");
		buyDAO.saveOrUpdate(buy);
	
	}	
}
