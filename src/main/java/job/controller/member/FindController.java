package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDto;
import job.manager.SHA256;
import job.model.NormalMDaoImpl;

@Controller
@RequestMapping("findmember")
public class FindController {
	@Autowired
	private NormalMDaoImpl nmdao;

	@RequestMapping("find_information")
	public String find_information() {
		return "findmember/find_information";
	}

	@RequestMapping("find_id_personal")
	public String find_id_personal() {
		return "findmember/find_id_personal";
	}

	@RequestMapping(value = "find_id_personal", method = RequestMethod.POST)
	public String find_id_personal(NormalMDto nmdto, HttpServletRequest request) {
		String email = nmdao.getEmail(nmdto);
		request.setAttribute("email", email);
		return "findmember/find_id_ok";
	}

	@RequestMapping("find_pw_personal")
	public String find_pw_personal() {
		return "findmember/find_pw_personal";
	}

	@RequestMapping(value = "find_pw_personal", method = RequestMethod.POST)
	public String find_pw_personal(NormalMDto nmdto, HttpServletRequest request) {
		String password = nmdao.getPw(nmdto); // json에 쓰기....
		System.out.println(password);
		request.setAttribute("email", nmdto.getEmail());
		return "findmember/find_pw_ok";
	}
	//////////////// 아이디,비밀번호 찾기 성공 페이지

	@RequestMapping("find_id_ok")
	public String find_id_ok() {
		return "findmember/find_id_ok";
	}

	@RequestMapping("find_pw_ok")
	public String find_pw_ok() {
		return "findmember/find_pw_ok";
	}

	@RequestMapping(value = "find_pw_ok", method = RequestMethod.POST)
	public String find_pw_ok(NormalMDto nmdto, HttpServletRequest request) {
		String password = new SHA256().On(nmdto.getPw());
		String email = nmdto.getEmail();

		if (nmdao.pwupdate(password, email)) {
			return "redirect:/";
		} else {
			return "findmember/find_information";
		}
	}

}
