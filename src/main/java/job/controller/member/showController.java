package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class showController {

	@RequestMapping("introduction_paper")
	public String introduction_paper() {
		return "member/introduction_paper";
	}

	@RequestMapping("resume")
	public String resume() {
		return "member/resume";
	}
	
	@RequestMapping("show_detail")
	public String show_detail() {
		return "member/show_detail";
	}
	
	@RequestMapping("show_personal")
	public String show_personal() {
		return "member/show_personal";
	}
	
	
}
