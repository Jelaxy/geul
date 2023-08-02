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

import geulrowding.a02_service.YenaService;
import geulrowding.z01_vo.Community;
import geulrowding.z01_vo.Grd_user;

@Controller
public class yenaController {
	@Autowired
	private YenaService service;
	
	//http://localhost:5080/geulrowding/funding.do
	@RequestMapping("funding.do")
	public String funding(Model d) {
		System.out.println("프로젝트 리스트 호출.");	
		d.addAttribute("projectList",service.fundingList());
		return "WEB-INF\\view\\BisumHTML\\funding.jsp";
		
	}
	//http://localhost:5080/geulrowding/funding-detail.do
	@RequestMapping("funding-detail.do")
	public String funding_detail(HttpSession session, @RequestParam("pj_id") String pj_id, Model d) {
		// pj_id는 필요없고 나중에 u_id나 session에 추가하기
		session.setAttribute("pj_id", pj_id);
		d.addAttribute("projectDetail", service.fundingDetail(pj_id));
		d.addAttribute("communiryList", service.communityList(pj_id));
		return "WEB-INF\\view\\BisumHTML\\funding-detail.jsp";
	}
	
	// http://localhost:5080/geulrowding/myproject_pjlist.do
		@RequestMapping("myproject_pjlist.do")
		public String mypj(Model d) {
			//d.addAttribute("myprojectList",service.myprojectList());
			return "WEB-INF\\view\\BisumHTML\\myproject_pjlist.jsp";
			
		}
	
	// http://localhost:5080/geulrowding/myproject_profile.do
			@RequestMapping("myproject_profile.do")
			public String getpf(Model d) {
				//d.addAttribute("myprojectList",service.myprojectList());
				return "WEB-INF\\view\\BisumHTML\\myproject_profile.jsp";
				
			}
	// http://localhost:5080/geulrowding/myproject_notice.do
				@RequestMapping("myproject_notice.do")
				public String getNotice(Model d) {
					//d.addAttribute("notice",service.myprojectList());
					return "WEB-INF\\view\\BisumHTML\\myproject_notice.jsp";
					
				}
		
				// http://localhost:5080/geulrowding/login.do
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

				// http://localhost:5080/geulrowding/signup.do
				@RequestMapping("signup.do")
				public String memInsert(Grd_user ins, Model d) {
					if (ins.getU_id() != null) {
						d.addAttribute("msg", service.insertMem(ins));
					}

					return "WEB-INF\\view\\BisumHTML\\signup.jsp";
				}
				
				// checkJob_id.do?job_id=PU_MAN
				@RequestMapping("checkU_id.do")
				public ResponseEntity<String> checkU_id(@RequestParam("u_id") String u_id) {
					return ResponseEntity.ok(service.checkId(u_id));
				}
	
}
