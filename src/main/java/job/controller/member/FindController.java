package job.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.CompanyMDaoImpl;
import job.bean.CompanyMDto;
import job.bean.NormalMDaoImpl;
import job.bean.NormalMDto;
import job.manager.SHA256;

@Controller
public class FindController {
	@Autowired
	private NormalMDaoImpl nmdao;
	@Autowired
	private CompanyMDaoImpl cmdao;
	
	@RequestMapping("/member/find_information")
	public String find_information() {
		return "member/find_information";
	}
	
	@RequestMapping("member/find_id_personal")
	public String find_id_personal() {
		return "member/find_id_personal";
	}
	@RequestMapping(value="member/find_id_personal",method = RequestMethod.POST)
	public String find_id_personal(NormalMDto nmdto, HttpServletRequest request) {
		String email = nmdao.getEmail(nmdto);
		request.setAttribute("email", email);
		return "member/find_id_ok";
	}
	@RequestMapping("member/find_id_ok")
	public String find_id_ok() {
		return "member/find_id_ok";
	}
	@RequestMapping("member/find_pw_ok")
	public String find_pw_ok() {
		return "member/find_pw_ok";
	}
	@RequestMapping("member/find_pw_ok2")
	public String find_id_ok2() {
		return "member/find_pw_ok2";
	}
	@RequestMapping(value = "member/find_pw_ok",method=RequestMethod.POST)
	public String find_pw_ok(NormalMDto nmdto, HttpServletRequest request) {
		String password = new SHA256().On(nmdto.getPassword());
		String email = nmdto.getEmail();
		
		if(nmdao.pwupdate(password,email)) {
			return "redirect:/";
		}
		else {
			return "member/find_information";
		}
	}
	@RequestMapping(value = "member/find_pw_ok2",method=RequestMethod.POST)
	public String find_pw_ok(CompanyMDto cmdto, HttpServletRequest request) {
		String password = new SHA256().On(cmdto.getPassword());
		String email = cmdto.getEmail();
		if(cmdao.pwupdate(password,email)) {
			return "redirect:/";
		}
		else {
			return "member/find_information";
		}
	}
	@RequestMapping("member/find_pw_personal")
	public String find_pw_personal() {
		return "member/find_pw_personal";
	}
	@RequestMapping(value="member/find_pw_personal",method=RequestMethod.POST)
	public String find_pw_personal(NormalMDto nmdto, HttpServletRequest request) {
		String password = nmdao.getPw(nmdto); //json에 쓰기....
		System.out.println(password);
		request.setAttribute("email", nmdto.getEmail());
		return "member/find_pw_ok";
	}
	@RequestMapping("member/find_id_company")
	public String find_id_company() {
		return "member/find_id_company";
	}
	@RequestMapping(value="member/find_id_company",method=RequestMethod.POST)
	public String find_id_company(CompanyMDto cmdto,HttpServletRequest request) {
		String email = cmdao.findEmail(cmdto);
		request.setAttribute("email", email);
		return "redirect:find_id_ok";
	}
	
	@RequestMapping("member/find_pw_company")
	public String find_pw_company() {
		return "member/find_pw_company";
	}
	@RequestMapping(value="member/find_pw_company",method=RequestMethod.POST)
	public String find_pw_company(CompanyMDto cmdto,HttpServletRequest request) {
		String password = cmdao.findPassword(cmdto);	//json에 쓰기...
		request.setAttribute("email", cmdto.getEmail());
		return "member/find_pw_ok2";
	}
	
}
