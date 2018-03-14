package job.controller.member;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDaoImpl;
import job.bean.NormalMDto;

@Controller
public class RegisterController {
	private Logger log = LoggerFactory.getLogger(getClass());
	@RequestMapping("member/register_personal")
	public String RegisterPersonal() {

		return "member/register_personal";
	}
	@RequestMapping(value="member/register_personal",method=RequestMethod.POST)
	public String RegisterPersonal(NormalMDto mdto) {
		log.debug(mdto.getEmail());
		log.debug(mdto.getName());
		log.debug(mdto.getGender());
		log.debug(mdto.getPassword());
		log.debug(mdto.getPhone());
		log.debug(mdto.getBirth());
		log.debug(mdto.getPwQuiz());
		log.debug(mdto.getPwAns());
		
		NormalMDaoImpl nmdao = new NormalMDaoImpl();
		//DB연결..
//		nmdao.insert(mdto);
		
		return "redirect:/member/login";
	}
	
	@RequestMapping("member/register_detail")
	public String RegisterDetail() {

		return "member/register_detail";
	}
	
	@RequestMapping("member/register_company")
	public String RegisterCompany() {

		return "member/register_company";
	}
	
	@RequestMapping("member/register_choose")
	public String RegisterChoose() {

		return "member/register_choose";
	}
}