package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.model.NormalMDaoImpl;

@Controller
public class Find_companyController {

	@RequestMapping("register/find_company")
	public String register_newcompany() {
		return "register/find_company";
	}
}
