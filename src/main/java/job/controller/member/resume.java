package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class resume {
	@RequestMapping("/member/resume")
	public String resume() {
		return "member/resume";
	} 
}
