package job.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import job.bean.CompanyDto;
import job.bean.NormalMDto;
import job.manager.SHA256;
import job.model.AdminDaoImpl;
import job.model.NormalMDaoImpl;

@Controller
@RequestMapping("findmember")
public class FindController {
	@Autowired
	private NormalMDaoImpl nmdao;
	
	@RequestMapping("find_information")
	public String find_information() {
		return "find/find_information";
	}

	@RequestMapping("find_id_personal")
	public String find_id_personal(HttpServletRequest request) {
		return "find/find_id_personal";
	}

	@RequestMapping(value = "find_id_personal", method = RequestMethod.POST)
	@ResponseBody
	public String find_id_personal(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		String email = nmdao.getEmail(nmdto);
		return email;
	}

	@RequestMapping("find_pw_personal")
	public String find_pw_personal(HttpServletRequest request) {
		return "find/find_pw_personal";
	}

	@RequestMapping(value = "find_pw_personal", method = RequestMethod.POST)
	public String find_pw_personal(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		//matching에 성공하면.
		if(nmdao.Chkaccount(nmdto)>0) {
			return "find/change_pw_personal";
		}else {
			return "redirect:/findmember/find_pw_personal";
		}
		
	}
	
	@RequestMapping("find_id_company")
	public String find_id_company(HttpServletRequest request) {
		return "find/find_id_company";
	}
	
	@RequestMapping(value = "find_id_company", method = RequestMethod.POST)
	@ResponseBody
	public String find_id_company(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		String email = nmdao.getEmail(nmdto);
		System.out.println("email : " + email);
		return email;
	}
	
	@RequestMapping("find_pw_company")
	public String find_pw_company(HttpServletRequest request) {
		return "find/find_pw_company";
	}
	
	@RequestMapping(value = "find_pw_company", method = RequestMethod.POST)
	public String find_pw_company(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		//matching에 성공하면.
			if(nmdao.Chkaccount(nmdto)>0) {
				return "find/change_pw_company";
			}else {
				return "redirect:/findmember/find_pw_company";
			}
	}
	

	@RequestMapping("change_pw_personal")
	public String change_pw_personal_get(HttpServletRequest request) {
		return "find/change_pw_personal";
	}
	
	@RequestMapping(value = "change_pw_personal", method = RequestMethod.POST)
	public String change_pw_personal_post(String email,String pw, HttpServletRequest request) {
		nmdao.pwupdate(pw, email);
		return "redirect:/login";
	}
	
	@RequestMapping("change_pw_company")
	public String change_pw_company_get(HttpServletRequest request) {
		return "find/change_pw_company";
	}
	
	@RequestMapping(value = "change_pw_company", method = RequestMethod.POST)
	public String change_pw_company_post(String email,String pw, HttpServletRequest request) {
		nmdao.pwupdate(pw, email);
		return "redirect:/login";
	}

}
