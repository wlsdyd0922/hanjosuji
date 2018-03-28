package job.controller.member;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import job.bean.CompanyDto;
import job.bean.NormalMDto;
import job.bean.ResumeDto;
import job.manager.SHA256;
import job.model.CompanyDaoImpl;
import job.model.NormalMDaoImpl;
import job.model.ResumeDaoImpl;

@Controller
@RequestMapping("register")
public class RegisterController {
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private NormalMDaoImpl nmdao;
	@Autowired
	private CompanyDaoImpl cdao;
	@Autowired
	private ResumeDaoImpl rdao;
	
	@RequestMapping("register_choose")
	public String RegisterChoose() {
		return "register/register_choose";
	}
	
	//일반 멤버 회원가입 페이지
	@RequestMapping("register_personal")
	public String RegisterPersonal() {
		return "register/register_personal";
	}
	//일반 멤버 회원가입 처리
	@RequestMapping(value="register_personal",method=RequestMethod.POST)
	public String RegisterPersonal(NormalMDto mdto, HttpServletRequest request) throws Exception {
		mdto.setPw(new SHA256().On(mdto.getPw()));
		//DB연결..
		if(!nmdao.register(mdto)) {
			throw new Exception("회원가입 실패");
		};
		return "redirect:/login";
	}
	
	//기업멤버 회원가입 페이지	
	@RequestMapping("register_company")
	public String RegisterCompany() {
		return "register/register_company";
	}
	
	@RequestMapping(value = "register_company",method = RequestMethod.POST)
	public String RegisterCompany(CompanyDto cdto) {
		log.debug(cdto.getName());
		log.debug(cdto.getIndustry());
		log.debug(cdto.getCeo());
		log.debug(cdto.getBirth());
		log.debug(cdto.getWebsite());
		log.debug(""+cdto.getEmployee());
		log.debug(cdto.getType());
		log.debug(""+cdto.getSales());
		log.debug(cdto.getLocation());
		log.debug(cdto.getImgname());
		log.debug(cdto.getImgecnoding());
		log.debug(cdto.getRegcode());
		cdao.insert(cdto);
		return "register/register_company";
	}
	@RequestMapping("compsearch")
	@ResponseBody      
	public String CompSearch(String compname) {
		log.debug("CompSearch({})", compname);
		return "register/register_company";
	}
	
	@RequestMapping("chksameid")
	@ResponseBody
	public String ChkIdSame(String email) {
		return String.valueOf(nmdao.ChkSameId(email));
	}
	
	@RequestMapping("register_detail")
	public String RegisterDetailGet(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		if(rdao.searchTarget(email)!=null)
			request.setAttribute("rdto",rdao.searchTarget(email));
		return "/register/register_detail";
	}
	
	@RequestMapping(value="register_detail",method = RequestMethod.POST)
	public String RegisterDetailPost(ResumeDto rdto, HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		log.debug(rdto.getEmail());
		if(rdao.searchTarget(email)!=null)
			rdao.edit(rdto);
		else
			rdao.insert(rdto);
		return "/member/information";
	}

}