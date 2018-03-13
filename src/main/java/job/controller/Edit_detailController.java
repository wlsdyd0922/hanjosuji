package job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Edit_detailController {
	@RequestMapping("/member/edit_detail")
	public String edit_detail() {
		return "member/edit_detail";
	} 
}
