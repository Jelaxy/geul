package spring.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.a02_service.A01_Service;

@Controller
public class A01_Controller {

	@Autowired
	private A01_Service service;
	
	
	@RequestMapping("geul.do")
	public String geul() {
		service.geul();
		return "";
	}
}
