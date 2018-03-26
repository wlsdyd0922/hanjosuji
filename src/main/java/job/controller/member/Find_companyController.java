package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Find_companyController {

	@RequestMapping("register/find_company")
	public String register_newcompany() {
		return "register/find_company";
	}
}
