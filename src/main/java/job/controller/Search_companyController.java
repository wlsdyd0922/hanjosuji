package job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Search_companyController {
	
	@RequestMapping("register/search_company")
	public String review() {
		return "register/search_company";
	}
}
