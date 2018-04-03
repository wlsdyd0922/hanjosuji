package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.bean.CompanyDto;
import job.bean.NormalMDto;
import job.model.CompanyDaoImpl;
import job.model.NormalMDaoImpl;

@Controller
public class Company_informationController {
	
	@Autowired
	private NormalMDaoImpl nmdao;
	@Autowired
	private CompanyDaoImpl cdao;
	private Logger log = LoggerFactory.getLogger(getClass());
	@RequestMapping("member/company_information")
	public String information(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		NormalMDto nmdto = nmdao.info(email);
		CompanyDto cdto = cdao.searchTarget(email);
		request.setAttribute("nmdto", nmdao.info(email));
		request.setAttribute("cdto", cdto);
		
		return "member/company_information";
	}

}
