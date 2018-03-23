package job.controller;

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
public class CompanyController {
	
	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private CompanyDaoImpl cdao;
	@Autowired
	private NormalMDaoImpl ndao;
	
	@RequestMapping("/기업임")
	public String company() {
		return null;
	}
	
	@RequestMapping("register_company")
	public String company_register(NormalMDto ndto)
	{
		ndao.register(ndto);
		return "company/companylist";
	}
}
