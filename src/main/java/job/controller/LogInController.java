package job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
public class LogInController {
	@RequestMapping("/member/login")
	public String LogIn() {
		return "login";
	}
}
