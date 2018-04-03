package job.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String find_id_personal(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		String email = nmdao.getEmail(nmdto);
		request.setAttribute("email", email);
		session.removeAttribute("find_id_personal");
		return "find/find_id_ok";
	}

	@RequestMapping("find_pw_personal")
	public String find_pw_personal(HttpServletRequest request) {
		request.getSession().setAttribute("find_pw_personal", "find_pw_personal");
		return "find/find_pw_personal";
	}

	@RequestMapping(value = "find_pw_personal", method = RequestMethod.POST)
	public String find_pw_personal(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		String password = nmdao.getPw(nmdto); 
		System.out.println(password);
		request.setAttribute("email", nmdto.getEmail());
		session.removeAttribute("find_pw_personal");
		return "find/find_pw_ok";
	}
	
	@RequestMapping("find_id_company")
	public String find_id_company(HttpServletRequest request) {
		request.getSession().setAttribute("find_id_company", "find_id_company");
		return "find/find_id_company";
	}
	
	@RequestMapping(value = "find_id_company", method = RequestMethod.POST)
	public String find_id_company(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		String email = nmdao.getEmail(nmdto);
		request.setAttribute("email", email);
		session.removeAttribute("find_id_company");
		return "find/find_id_ok";
	}
	
	@RequestMapping("find_pw_company")
	public String find_pw_company(HttpServletRequest request) {
		request.getSession().setAttribute("find_pw_company", "find_pw_company");
		return "find/find_pw_company";
	}
	
	@RequestMapping(value = "find_pw_company", method = RequestMethod.POST)
	public String find_pw_company(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		String password = nmdao.getPw(nmdto); 
		System.out.println(password);
		request.setAttribute("email", nmdto.getEmail());
		session.removeAttribute("find_pw_company");
		return "find/find_pw_ok";
	}
	
	//////////////// 아이디,비밀번호 찾기 성공 페이지

	@RequestMapping("find_id_ok")
	public String find_id_ok() {
		return "find/find_id_ok";
	}

	@RequestMapping("find_pw_ok")
	public String find_pw_ok() {
		return "find/find_pw_ok";
	}

	@RequestMapping(value = "find_pw_ok", method = RequestMethod.POST)
	public String find_pw_ok(NormalMDto nmdto, HttpServletRequest request) {
		String password = new SHA256().On(nmdto.getPw());
		String email = nmdto.getEmail();

		if (nmdao.pwupdate(password, email)) {
			return "redirect:/";
		} else {
			return "find/find_information";
		}
	}
	

}
