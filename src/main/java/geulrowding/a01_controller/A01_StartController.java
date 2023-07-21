package geulrowding.a01_controller;
// geulrowding.a01_controller.A01_StartController
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A01_StartController {
	//http://localhost:5080/geulrowding/start.do
	//http://192.168.10.113:5080/geulrowding/start.do
	@RequestMapping("start.do")
	public String start() {
		return "WEB-INF\\views\\a01_start\\a01_start.jsp";
		// 예나안녕~~~
		// 안녕~~~~~
		// 이걸로 내 기능만 왕따 당하는 일은 없겠다~~~
	}
}
