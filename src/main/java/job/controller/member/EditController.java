package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDto;
import job.bean.ResumeDto;
import job.manager.SHA256;
import job.model.CompanyDaoImpl;
import job.model.NormalMDaoImpl;
import job.model.ResumeDaoImpl;

@Controller
@RequestMapping("member")
public class EditController {

	private Logger log = LoggerFactory.getLogger(getClass());

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

	@RequestMapping(value = "edit_personal", method = RequestMethod.POST)
	public String EditPersonal1(NormalMDto nmdto,HttpServletRequest request) throws Exception {
		log.debug("편집들어옴");
		log.debug("email={}", nmdto.getEmail());
		if (nmdto.getPw() == "") {
			log.debug("pw={}", nmdto.getPw());
		}else {
			nmdto.setPw(new SHA256().On(nmdto.getPw()));
		}
		log.debug("phone={}", nmdto.getPhone());
		log.debug("addr={}", nmdto.getAddr());
		log.debug("addr2={}", nmdto.getAddr2());
		log.debug("pwquiz={}", nmdto.getPwquiz());
		
		if(!nmdao.edit(nmdto)) {
			throw new Exception("회원정보 변경 실패");
		}
		request.setAttribute("nmdto", nmdao.info(nmdto.getEmail()));
		request.setAttribute("rdto", rdao.searchTarget(nmdto.getEmail()));
		return "member/information";
	}

	// @RequestMapping("edit_company")
	// public String EditCompany(HttpServletRequest request) {
	// String company = (String) request.getSession().getAttribute("company");
	// request.setAttribute("cdto", cdao.searchTarget(company));
	// return "company/edit_compnay";
	// }
	// @RequestMapping(value="edit_company",method=RequestMethod.POST)
	// public String EditCompany() {
	// return "company/edit_compnay";
	// }
	
	@RequestMapping("edit_resume")
	public String EditDetailResume(HttpServletRequest request) {
		String author = (String) request.getSession().getAttribute("accept");
		request.setAttribute("rdto", rdao.searchTarget(author));
		return "member/edit_resume";
	} 
	@RequestMapping(value="edit_resume",method=RequestMethod.POST)
	public String EditDetailResume(ResumeDto rdto,HttpServletRequest request) {
		String author = (String) request.getSession().getAttribute("accept");
		request.setAttribute("rdto", rdao.searchTarget(author));
		rdao.edit(rdto);
		return "member/information";
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