package job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompanylistController {
	@RequestMapping("/company/companylist")
	public String companylist() {
		return "/company/companylist";
	}
}
