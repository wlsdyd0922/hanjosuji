package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Edit_resumeController {
	@RequestMapping("/member/edit_resume")
	public String edit_detail() {
		return "member/edit_resume";
	} 
}
