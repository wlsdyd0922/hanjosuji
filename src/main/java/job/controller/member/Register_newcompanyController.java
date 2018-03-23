package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.model.NormalMDaoImpl;

@Controller
public class Register_newcompanyController {

	@RequestMapping("register/register_newcompany")
	public String register_newcompany() {
		return "register/register_newcompany";
	}
}
