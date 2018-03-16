package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class showController {

	@RequestMapping("/member/introduction_paper")
	public String introduction_paper() {
		return "member/introduction_paper";
	}

	@RequestMapping("/member/resume")
	public String resume() {
		return "member/resume";
	}
	
	@RequestMapping("/member/show_detail")
	public String show_detail() {
		return "member/show_detail";
	}
	
	@RequestMapping("/member/show_personal")
	public String show_personal() {
		return "member/show_personal";
	}
	
	
}
