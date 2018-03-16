package job.controller.member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	//로그인 페이지
	@RequestMapping("login")
	public String LogIn() {
		return "login";
	}
	//로그인 판정
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String LogIn(NormalMDto NMdto, HttpServletRequest request, HttpServletResponse response) {
		//로그인 기존값이 남아있다면 제거
		if (request.getSession().getAttribute("accept") != null) {
			request.getSession().removeAttribute("accept"); // 기존값을 제거해 준다.
		}
		// 비번 암호화
		NMdto.setPassword(new SHA256().On(NMdto.getPassword()));
		// 쿠키 생성
		Cookie ck = new Cookie("rememberId", NMdto.getEmail());
		if (NMdto.isRememberId()) {
			ck.setMaxAge(4 * 7 * 24 * 60 * 60);
		} else {
			ck.setMaxAge(0);
		}
		response.addCookie(ck);
		//로그인 판정에 따른 페이지 이동
		if (NMdao.login(NMdto.getEmail(), NMdto.getPassword())) {
			request.getSession().setAttribute("accept", NMdto.getEmail());// accept라는 이름으로 세션에 id를 저장한다.
			return "redirect:/";
		} else {
			return "redirect:login";
		}
	}
	//로그아웃..
	@RequestMapping("member/logout")
	public String LogOut(HttpServletRequest request ) {
		if (request.getSession().getAttribute("accept") != null) {
			request.getSession().removeAttribute("accept"); // 기존값을 제거해 준다.
		}
		return "redirect:/";
	}
	@RequestMapping("아이디 찾기")
	public String FindId() {
		return "";
	}
	@RequestMapping("비번 찾기")
	public String FindPw() {
		return "";
	}
}
