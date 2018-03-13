package job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDto;

@Controller()
public class LogInController {
	@RequestMapping("member/login")
	public String LogIn() {
		return "member/login";
	}
	@RequestMapping(value="member/login",method=RequestMethod.POST)
	public String LogIn(NormalMDto NMdto) {
		
		return "member/login";
	}
}
