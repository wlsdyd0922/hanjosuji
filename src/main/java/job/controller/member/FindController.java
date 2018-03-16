package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindController {
	@RequestMapping("/member/find_information")
	public String find_information() {
		return "member/find_information";
	}
	
	@RequestMapping("/member/find_id_personal")
	public String find_id_personal() {
		return "member/find_id_personal";
	}
	
	@RequestMapping("/member/find_pw_personal")
	public String find_pw_personal() {
		return "member/find_pw_personal";
	}
	
	@RequestMapping("/member/find_id_company")
	public String find_id_company() {
		return "member/find_id_company";
	}
	
	@RequestMapping("/member/find_pw_company")
	public String find_pw_company() {
		return "member/find_pw_company";
	}
}
