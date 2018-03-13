package job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Edit_personalController {
	@RequestMapping("/member/edit_personal")
	public String edit_personal() {
		return "member/edit_personal";
	} 
}

