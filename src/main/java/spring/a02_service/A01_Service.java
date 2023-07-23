package spring.a02_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.a03_dao.A01_Dao;

@Service
public class A01_Service {
	@Autowired
	private A01_Dao dao;
	
	public void geul() {
		
	}
}
