package geulrowding.a01_controller;
import org.springframework.beans.factory.annotation.Autowired;
// geulrowding.a01_controller.A01_StartController
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import geulrowding.a02_service.FundingService;

@Controller
public class FundingController {
	@Autowired
	private FundingService service;
	
	//http://localhost:5080/geul/funding.do
	//http://192.168.10.113:5080/geul/funding.do
	@RequestMapping("funding.do")
	public String funding(Model d) {
		System.out.println("프로젝트 리스트 호출.");	
		d.addAttribute("projectList",service.fundingList());
		return "WEB-INF\\view\\BisumHTML\\funding.jsp";
		
	}
	
}
