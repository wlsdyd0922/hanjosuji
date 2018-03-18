package job.controller.member;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import job.bean.CompanyMDaoImpl;
import job.bean.CompanyMDto;
import job.bean.NormalMDaoImpl;
import job.bean.NormalMDto;
import job.manager.SHA256;

@Controller
@RequestMapping("register")
public class RegisterController {
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private NormalMDaoImpl nmdao;
	@Autowired
	private CompanyMDaoImpl cmdao;
	
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
	public String RegisterPersonal(NormalMDto mdto) throws Exception {
		mdto.setPassword(new SHA256().On(mdto.getPassword()));
		//DB연결..
		if(!nmdao.insert(mdto)) {
			throw new Exception("회원가입 실패");
		};
		return "redirect:login";
	}
	
	//기업멤버 회원가입 페이지	
	@RequestMapping("register_company")
	public String RegisterCompany() {
		return "register/register_company";
	}
	
	@RequestMapping(value = "register_company",method = RequestMethod.POST)
	public String RegisterCompany(CompanyMDto cmdto) {
		log.debug(cmdto.getEmail());
		log.debug(cmdto.getPassword());
		log.debug(cmdto.getPhone());
		log.debug(cmdto.getCompany());
		log.debug(cmdto.getCeo());
		log.debug(cmdto.getBirth());
		log.debug(cmdto.getPwquiz());
		log.debug(cmdto.getPwans());
		log.debug(cmdto.getIndustry());
		log.debug(cmdto.getLocation());
		log.debug(""+cmdto.getEmployee());
		log.debug(cmdto.getSales());
		cmdao.register(cmdto);
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
	
	@RequestMapping("member/register_detail")
	public String RegisterDetail() {
		return "member/register_detail";
	}

}