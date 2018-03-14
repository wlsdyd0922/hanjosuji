package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {
	
	@RequestMapping("member/register_personal")
	public String RegisterP() {

		return "member/register_personal";
	}
	
	@RequestMapping("member/register_detail")
	public String RegisterD() {

		return "member/register_detail";
	}
}