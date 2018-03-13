package job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDto;

@Controller()
@RequestMapping("member")
public class LogInController {
	@RequestMapping("login")
	public String LogIn() {
		return "member/login";
	}
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String LogIn(NormalMDto NMdto) {
		
		return "member/login";
	}
	
	@RequestMapping("register_personal")
	public String RegisterP() {
		
		return"member/register_personal";
	}
	
	@RequestMapping("register_detail")
	public String RegisterD() {
		
		return"member/register_detail";
	}
}
