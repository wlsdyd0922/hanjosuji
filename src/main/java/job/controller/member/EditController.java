package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.model.CompanyDaoImpl;
import job.model.NormalMDaoImpl;
import job.model.ResumeDaoImpl;

@Controller
@RequestMapping("member")
public class EditController {
	
	@Autowired
	private NormalMDaoImpl nmdao;
	@Autowired
	private CompanyDaoImpl cdao;
	@Autowired
	private ResumeDaoImpl rdao;
	
	@RequestMapping("edit_personal")
	public String EditPersonal(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		request.setAttribute("nmdto", nmdao.info(email));
		return "member/edit_personal";
	} 
	@RequestMapping(value="edit_personal",method=RequestMethod.POST)
	public String EditPersonal1() {
		return "member/edit_personal";
	} 
//	@RequestMapping("edit_company")
//	public String EditCompany(HttpServletRequest request) {
//		String company = (String) request.getSession().getAttribute("company");
//		request.setAttribute("cdto", cdao.searchTarget(company));
//		return "company/edit_compnay";
//	} 
//	@RequestMapping(value="edit_company",method=RequestMethod.POST)
//	public String EditCompany() {
//		return "company/edit_compnay";
//	} 
	
	@RequestMapping("edit_resume")
	public String EditDetailResume(HttpServletRequest request) {
		String author = (String) request.getSession().getAttribute("author");
		request.setAttribute("rdto", rdao.searchTarget(author));
		return "member/edit_resume";
	} 
	@RequestMapping(value="edit_resume",method=RequestMethod.POST)
	public String EditDetailResume() {
		return "company/edit_resume";
	} 

	@RequestMapping("edit_introduction_paper")
	public String EditIntroduction_paper() {
		return "member/edit_introduction_paper";
	} 
	@RequestMapping("edit_detail")
	public String EditDetail() {
		return "member/edit_detail";
	} 
}