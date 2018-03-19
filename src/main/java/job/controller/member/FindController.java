package job.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.CompanyMDto;
import job.bean.NormalMDto;
import job.manager.SHA256;
import job.model.CompanyMDaoImpl;
import job.model.NormalMDaoImpl;

@Controller
@RequestMapping("findmember")
public class FindController {
	@Autowired
	private NormalMDaoImpl nmdao;
	@Autowired
	private CompanyMDaoImpl cmdao;
	
	@RequestMapping("find_information")
	public String find_information() {
		return "findmember/find_information";
	}
	
	@RequestMapping("find_id_personal")
	public String find_id_personal() {
		return "findmember/find_id_personal";
	}
	@RequestMapping(value="find_id_personal",method = RequestMethod.POST)
	public String find_id_personal(NormalMDto nmdto, HttpServletRequest request) {
		String email = nmdao.getEmail(nmdto);
		request.setAttribute("email", email);
		return "findmember/find_id_ok";
	}
	@RequestMapping("find_id_ok")
	public String find_id_ok() {
		return "findmember/find_id_ok";
	}
	@RequestMapping("find_pw_ok")
	public String find_pw_ok() {
		return "findmember/find_pw_ok";
	}
	@RequestMapping("find_pw_ok2")
	public String find_id_ok2() {
		return "findmember/find_pw_ok2";
	}
	@RequestMapping(value = "find_pw_ok",method=RequestMethod.POST)
	public String find_pw_ok(NormalMDto nmdto, HttpServletRequest request) {
		String password = new SHA256().On(nmdto.getPassword());
		String email = nmdto.getEmail();
		
		if(nmdao.pwupdate(password,email)) {
			return "redirect:/";
		}
		else {
			return "findmember/find_information";
		}
	}
	@RequestMapping(value = "find_pw_ok2",method=RequestMethod.POST)
	public String find_pw_ok(CompanyMDto cmdto, HttpServletRequest request) {
		String password = new SHA256().On(cmdto.getPassword());
		String email = cmdto.getEmail();
		if(cmdao.pwupdate(password,email)) {
			return "redirect:/";
		}
		else {
			return "findmember/find_information";
		}
	}
	@RequestMapping("find_pw_personal")
	public String find_pw_personal() {
		return "findmember/find_pw_personal";
	}
	@RequestMapping(value="find_pw_personal",method=RequestMethod.POST)
	public String find_pw_personal(NormalMDto nmdto, HttpServletRequest request) {
		String password = nmdao.getPw(nmdto); //json에 쓰기....
		System.out.println(password);
		request.setAttribute("email", nmdto.getEmail());
		return "findmember/find_pw_ok";
	}
	@RequestMapping("find_id_company")
	public String find_id_company() {
		return "findmember/find_id_company";
	}
	@RequestMapping(value="find_id_company",method=RequestMethod.POST)
	public String find_id_company(CompanyMDto cmdto,HttpServletRequest request) {
		String email = cmdao.findEmail(cmdto);
		request.setAttribute("email", email);
		return "redirect:/findmember/find_id_ok";
	}
	
	@RequestMapping("find_pw_company")
	public String find_pw_company() {
		return "findmember/find_pw_company";
	}
	@RequestMapping(value="find_pw_company",method=RequestMethod.POST)
	public String find_pw_company(CompanyMDto cmdto,HttpServletRequest request) {
		String password = cmdao.findPassword(cmdto);	//json에 쓰기...
		request.setAttribute("email", cmdto.getEmail());
		return "findmember/find_pw_ok2";
	}
}
