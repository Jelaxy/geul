package geulrowding.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import geulrowding.a02_service.CheckoutService;
import geulrowding.z01_vo.Paycard_info;

@Controller
public class CheckoutController {
	@Autowired
	private CheckoutService service;
	
	@RequestMapping("insCard.do")
	public String insCard(Paycard_info ins, Model d) {
		d.addAttribute("msg", service.insCard(ins));
		return "WEB-INF\\view\\BisumHTML\\checkout_card.jsp";
	}
	
	@RequestMapping("getReward.do")
	public String getReward(@RequestParam("pj_id") String pj_id, Model d) {
	    d.addAttribute("reward", service.getReward(pj_id));
	    return "WEB-INF\\view\\BisumHTML\\checkout_reward.jsp";
	}

	@RequestMapping("getAddress.do")
	public String getAddress(@RequestParam("u_id") String u_id, Model d) {
		d.addAttribute("shipping", service.getReward(u_id));
		return "WEB-INF\\view\\BisumHTML\\checkout_shipping.jsp";
	}
	
	
}
