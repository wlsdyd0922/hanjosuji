package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.model.NormalMDaoImpl;

@Controller
public class Company_informationController {
	
	@Autowired
	private NormalMDaoImpl nmdao;
	
	@RequestMapping("member/company_information")
	public String information(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		request.setAttribute("nmdto", nmdao.info(email));
		return "member/company_information";
	}

}
