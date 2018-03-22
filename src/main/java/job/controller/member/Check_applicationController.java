package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.model.NormalMDaoImpl;

@Controller
public class Check_applicationController {

	@Autowired
	private NormalMDaoImpl nmdao;
	
	@RequestMapping("company/check_application")
	public String check_application() {
		return "company/check_application";
	}
}
