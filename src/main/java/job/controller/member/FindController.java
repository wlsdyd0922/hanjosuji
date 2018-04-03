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
		request.getSession().setAttribute("find_id_personal", "find_id_personal");
		return "find/find_id_personal";
	}

	@RequestMapping(value = "find_id_personal", method = RequestMethod.POST)
	@ResponseBody
	public String find_id_personal(String name, String phone, HttpSession session, HttpServletRequest request) {
		System.out.println(name);
		System.out.println(phone);
		session.removeAttribute("find_id_personal");
		NormalMDto nmdto = new NormalMDto();
		nmdto.setName(name);
		nmdto.setPhone(phone);
		String email = nmdao.getEmail(nmdto);
		return email;
	}

	@RequestMapping("find_pw_personal")
	public String find_pw_personal(HttpServletRequest request) {
		request.getSession().setAttribute("find_pw_personal", "find_pw_personal");
		System.out.println(1);
		return "find/find_pw_personal";
	}

	@RequestMapping(value = "find_pw_personal", method = RequestMethod.POST)
	public String find_pw_personal(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		//matching에 성공하면.
		if(nmdao.Chkaccount(nmdto)>0) {
			return "redirect:/findmember/change_pw_personal";
		}else {
			return "find/find_pw_personal";
		}
		
	}
	
	@RequestMapping("find_id_company")
	public String find_id_company(HttpServletRequest request) {
		request.getSession().setAttribute("find_id_company", "find_id_company");
		return "find/find_id_company";
	}
	
	@RequestMapping(value = "find_id_company", method = RequestMethod.POST)
	public String find_id_company(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		session.removeAttribute("find_id_company");
		String email = nmdao.getEmail(nmdto);
		request.setAttribute("email", email);
		return "find/find_id_ok";
	}
	
	@RequestMapping("find_pw_company")
	public String find_pw_company(HttpServletRequest request) {
		return "find/find_pw_company";
	}
	
	@RequestMapping(value = "find_pw_company", method = RequestMethod.POST)
	public String find_pw_company(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		String password = nmdao.getPw(nmdto); 
		System.out.println(password);
		request.setAttribute("email", nmdto.getEmail());
		return "find/find_pw_ok";
	}
	

	@RequestMapping("change_pw_personal")
	public String change_pw_personal_get(HttpServletRequest request) {
		return "find/change_pw_personal";
	}
	
	@RequestMapping(value = "change_pw_personal", method = RequestMethod.POST)
	public String change_pw_personal_post(String pw, HttpServletRequest request) {
		String email = (String)request.getAttribute("accept");
		System.out.println(email);
		System.out.println(pw);
		String password = new SHA256().On(pw);
		nmdao.pwupdate(password, email);
		return "redirect:/login";
	}

}
