package job.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value = "register_company",method = RequestMethod.POST)
	public String company_register(CompanyDto cdto)	{
		cdao.insert(cdto);
		return "company/companylist";
	}
	
	@RequestMapping("register_companymember")
	public String company_register(NormalMDto nmdto)	{
		ndao.register(nmdto);
		return "company/companylist";
	}
	@RequestMapping("/company/companylist")
	public String companylist() {
		return "/company/companylist";
	}
	
	
}
