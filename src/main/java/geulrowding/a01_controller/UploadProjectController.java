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
import geulrowding.a02_service.UploadProjectService;
import geulrowding.z01_vo.Community;
import geulrowding.z01_vo.Project;
// 오픈예정 & 프로젝트
@Controller
public class UploadProjectController {
	@Autowired
	private UploadProjectService service;
	
	//프로젝트 생성
	//http://localhost:5080/geul/uploadProject.do?
	@GetMapping("uploadProject.do")
	 public String uploadProject() {
		return "WEB-INF\\view\\BisumHTML\\uploadProject.jsp";
	}
	@PostMapping("uploadProject.do")
    public String uploadProject(@RequestParam("imgFile") MultipartFile[] imgFile,
    							@RequestParam("info_imgFile") MultipartFile[] info_imgFile,
    										Project ins,Model d) {
		System.out.println("test실행");
		System.out.println(ins.getTitle());
		System.out.println(ins.getPrice());
		System.out.println(ins.getStartdateS());
        if (ins.getTitle()!= null) {
            d.addAttribute("msg", service.uploadProject(imgFile,info_imgFile,ins));
        }
        return "WEB-INF\\view\\BisumHTML\\uploadProject.jsp";
	 }
}