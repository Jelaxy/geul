// MyPageController2.java
package geulrowding.a01_controller;

import geulrowding.a02_service.MyPageService2;
import geulrowding.z01_vo.Address;
import geulrowding.z01_vo.Grd_user;
import geulrowding.z01_vo.Paycard_info;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController2 {
    @Autowired
    private MyPageService2 myPageService2;

	
	
	@RequestMapping("MyPage2.do")
	public String grd_userList(@ModelAttribute("sch") Grd_user sch, Model d) {
		d.addAttribute("user", myPageService2.getGrd_user(sch));
		return "WEB-INF\\view\\BisumHTML\\myproject_profilemy.jsp";
	}
	
	@PostMapping("/updateAction.do")
	public String updateGrd_user(Grd_user upt, Model d){
		String result = myPageService2.updateGrd_user(upt);
		d.addAttribute("user", result);
	    return "redirect:/MyPage2.do";
	}
	
	@RequestMapping("Mycard.do")
	public String paycard_infoList(@ModelAttribute("sch2") Paycard_info sch2, Model d2) {
		d2.addAttribute("user", myPageService2.getPaycard_info(sch2));
		return "WEB-INF\\view\\BisumHTML\\myproject_profilemycardinfo.jsp";
	}
	@PostMapping("/updateActioncard.do")
	public String updatePaycard_info(Paycard_info upt2, Model d2){
		String result = myPageService2.updatePaycard_info(upt2);
		d2.addAttribute("user", result);
	    return "redirect:/Mycard.do";
	}
	
	@RequestMapping("MyAddress.do")
	public String addressList(@ModelAttribute("sch3") Address sch3, Model d3) {
		d3.addAttribute("user", myPageService2.getAddress(sch3));
		return "WEB-INF\\view\\BisumHTML\\myproject_profilemyaddress.jsp";
	}
	
	@PostMapping("/updateAddress.do")
	public String updateAddress(Address upt3, Model d3){
		String result = myPageService2.updateAddress(upt3);
		d3.addAttribute("user", result);
		System.out.println(upt3.getAd_detail());
		System.out.println(upt3.getAd_normal());
		System.out.println(upt3.getAd_num());
		System.out.println(upt3.getU_id());
		System.out.println(myPageService2.updateAddress(upt3));
	    return "redirect:/MyAddress.do";
	}
}
