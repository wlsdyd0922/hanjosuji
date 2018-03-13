package job.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDto;

@Controller()
@RequestMapping("member")
public class LogInController {
	Logger log = LoggerFactory.getLogger(getClass());

	@RequestMapping("login")
	public String LogIn() {
		return "member/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String LogIn(NormalMDto NMdto, HttpServletResponse response) {
		String id = NMdto.getId();
		String pw = NMdto.getPassword();
		boolean chkid = NMdto.isRememberId();

		// DB연결
		log.debug("id = {}", id);
		log.debug("pw = {}", pw);
		log.debug("chk = {}", chkid);
		if (chkid) {
			// 쿠키 생성
			Cookie ck = new Cookie("rememberId", id);
			ck.setMaxAge(4*7*24*60*60);
			response.addCookie(ck);
		} else {
			Cookie ck = new Cookie("rememberId", id);
			ck.setMaxAge(0);
			response.addCookie(ck);
		}

		return "redirect:login";
	}

	@RequestMapping("register_personal")
	public String RegisterP() {

		return "member/register_personal";
	}

	@RequestMapping("register_detail")
	public String RegisterD() {

		return "member/register_detail";
	}
}
