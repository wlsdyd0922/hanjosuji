package job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Register_personalController {
	
	@RequestMapping("member/register_personal")
	public String RegisterP() {

		return "member/register_personal";
	}
}