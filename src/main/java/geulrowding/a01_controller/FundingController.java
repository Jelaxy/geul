package geulrowding.a01_controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
// geulrowding.a01_controller.A01_StartController
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import geulrowding.a02_service.FundingService;
import geulrowding.z01_vo.Community;

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
	//http://localhost:5080/geul/funding-detail.do
	@RequestMapping("funding-detail.do")
	public String funding_detail(@RequestParam("pj_id") String pj_id, Model d) {
		// pj_id는 필요없고 나중에 u_id나 session에 추가하기
		// HttpSession session 위에 선언하고, session.setAttribute("pj_id", pj_id);
		d.addAttribute("projectDetail", service.fundingDetail(pj_id));
		d.addAttribute("communiryList", service.communityList(pj_id));
		d.addAttribute("noticeList", service.noticeList(pj_id));
		return "WEB-INF\\view\\BisumHTML\\funding-detail.jsp";
	}
	
	//http://localhost:5080/geul/openfunding.do
	@RequestMapping("openfunding.do")
	public String openfunding(Model d) {
		System.out.println("오픈예정 리스트 호출.");	
		d.addAttribute("openList",service.OpenList());
		return "WEB-INF\\view\\BisumHTML\\open.jsp";
	}
	//http://localhost:5080/geul/open_detail.do
		@RequestMapping("open_detail.do")
		public String open_detail(@RequestParam("pj_id") String pj_id, Model d) {
			// pj_id는 필요없고 나중에 u_id나 session에 추가하기
			// HttpSession session 위에 선언하고, session.setAttribute("pj_id", pj_id);
			d.addAttribute("projectDetail", service.fundingDetail(pj_id));
			d.addAttribute("communiryList", service.communityList(pj_id));
			d.addAttribute("noticeList", service.noticeList(pj_id));
			return "WEB-INF\\view\\BisumHTML\\open-detail.jsp";
		}
	
	
	
	@PostMapping("insertcommunity.do")
	@ResponseBody
	public String insertcommunity(Community ins) {
		return service.insertcommunity(ins);
	}
	
}
