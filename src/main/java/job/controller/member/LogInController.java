package job.controller.member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDaoImpl;
import job.bean.NormalMDto;
import job.manager.SHA256;

@Controller()
public class LogInController {
	@Autowired
	private NormalMDaoImpl NMdao = new NormalMDaoImpl();

	Logger log = LoggerFactory.getLogger(getClass());

	@RequestMapping("member/login")
	public String LogIn() {
		return "member/login";
	}

	@RequestMapping("member/login_ok")
	public String LogIn_OK() {
		return "member/login_ok";
	}

	@RequestMapping("member/login_nok")
	public String LogIn_NOK() {
		return "member/login_nok";
	}

	@RequestMapping(value = "member/login", method = RequestMethod.POST)
	public String LogIn(NormalMDto NMdto, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		// 디버깅용-----------------------------------
		String id = NMdto.getEmail();
		String pw = NMdto.getPassword();
		boolean chkid = NMdto.isRememberId();

		log.debug("id = {}", id);
		log.debug("pw = {}", pw);
		log.debug("chk = {}", chkid);
		// ----------------------------------------
		//비번 암호화
		SHA256 sha256 = new SHA256();
		pw = sha256.On(NMdto.getPassword());
		NMdto.setPassword(pw);
		
		Cookie ck = new Cookie("rememberId", id);
		if (chkid) {
			// 쿠키 생성
			ck.setMaxAge(4 * 7 * 24 * 60 * 60);
		} else {
			ck.setMaxAge(0);
		}

		response.addCookie(ck);

		 boolean result = NMdao.login(NMdto.getEmail(),NMdto.getPassword());
//		boolean result = true;
		if (result == true) {
			session.setAttribute("accept", id);// accept라는 이름으로 세션에 id를 저장한다.
			return "redirect:/";
		} else {
			return "redirect:login_nok";
		}
	}
}
