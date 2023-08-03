package geulrowding.a01_controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
// geulrowding.a01_controller.A01_StartController
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import geulrowding.a02_service.FundingService;
import geulrowding.z01_vo.Community;
import geulrowding.z01_vo.Grd_user;
// 오픈예정 & 프로젝트
@Controller
public class FundingController {
	@Autowired
	private FundingService service;
	
	//펀딩리스트
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
	//오픈예정리스트
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
	//http://localhost:5080/geul/writer_detail.do
	@RequestMapping("writer_detail.do")
	public String writer_detail(Model d) {
		//System.out.println("작가 프로필 호출.");	
		//d.addAttribute("writer",service.writer_detail());
		return "WEB-INF\\view\\BisumHTML\\writer_profile.jsp";
	}
	
	//---------------예나 파트------------------------------------------
	// http://localhost:5080/geul/login.do
		@RequestMapping("login.do")
		public String login(Grd_user mem, HttpSession session, Model d) {
			String msg = "";
			if (mem.getU_id() != null) { // 초기화면과 구분..
				msg = "로그인 실패";
				Grd_user login = service.login(mem);
				if (login != null) {
					msg = "로그인 성공";
					session.setAttribute("mem", login);
				}
				d.addAttribute("msg", msg);
			}

			return "WEB-INF\\view\\BisumHTML\\login.jsp";
		}

		@GetMapping("logout.do")
		public String logout(HttpSession session) {

			if (session.getAttribute("mem") != null) {
				session.removeAttribute("mem");
			}
			return "redirect:/login.do";
		}

		// 회원가입
		// http://localhost:5080/geul/signup.do
		@RequestMapping("signup.do")
		public String memInsert(Grd_user ins, Model d) {
			if (ins.getU_id() != null) {
				d.addAttribute("msg", service.insertMem(ins));
			}

			return "WEB-INF\\view\\BisumHTML\\signup.jsp";
		}

		// http://localhost:5080/geul/myproject_pjlist.do
		@RequestMapping("myproject_pjlist.do")
		public String getMyproject_pjlist(String u_id, Model d) {
				d.addAttribute("myfunding", service.myfunding(u_id));
				return "WEB-INF\\view\\BisumHTML\\myproject_pjlist.jsp";
			}

		// http://localhost:5080/geul/myproject_profile.do
		@RequestMapping("myproject_profile.do")
		public String selAuthor() {
			return "WEB-INF\\view\\BisumHTML\\myproject_profile.jsp";
		}

		// http://localhost:5080/geul/myproject_notice.do
		@RequestMapping("myproject_notice.do")
		public String selAuthora() {
			return "WEB-INF\\view\\BisumHTML\\myproject_notice.jsp";
		}
		// 아이디 중복 확인
		// http://localhost:5080/geul2/checkU_id.do?u_id=zemma335
//			@RequestMapping("checkU_id.do")
//			public ResponseEntity<String> checkU_id(@RequestParam("u_id") String u_id) {
//				return ResponseEntity.ok(service.checkId(u_id));
//			}
}
