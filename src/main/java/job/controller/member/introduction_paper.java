package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class introduction_paper {
	@RequestMapping("/member/introduction_paper")
	public String introduction_paper() {
		return "member/introduction_paper";
	} 
}
