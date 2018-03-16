package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Edit_introduction_paperController {
	@RequestMapping("/member/edit_introduction_paper")
	public String edit_detail() {
		return "member/edit_introduction_paper";
	} 
}
