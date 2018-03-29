package job.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.BoardDto;
import job.bean.CompanyDto;
import job.bean.NormalMDto;
import job.model.BoardDaoImpl;
import job.model.CompanyDaoImpl;
import job.model.NormalMDaoImpl;

@Controller 
public class CompanyController {
	
	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private CompanyDaoImpl cdao;
	@Autowired
	private NormalMDaoImpl ndao;
	@Autowired
	private BoardDaoImpl boardDao;
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
	@RequestMapping(value="/company/companylist",method=RequestMethod.POST)
	public String companylist(HttpServletRequest request) {
		String favSort = request.getParameter("favSort");
		String career = request.getParameter("career");
		String location = request.getParameter("favRegion");
		String company = request.getParameter("foam_of_company");
		String employment = request.getParameter("foam_of_employment");
		String keyword = request.getParameter("keyword");

		List<BoardDto> list2 = boardDao.searchList(keyword,location,favSort,company,career,employment);
		
		request.setAttribute("list2", list2);
		
		
		return "/company/companylist";
	}
	
	
}
