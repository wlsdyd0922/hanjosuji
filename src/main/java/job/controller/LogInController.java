package job.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDaoImpl;
import job.bean.NormalMDto;

@Controller()
public class LogInController {
	private NormalMDaoImpl NMdao = new NormalMDaoImpl();
	
	public NormalMDaoImpl getNMdao() {
		return NMdao;
	}

	public void setNMdao(NormalMDaoImpl nMdao) {
		NMdao = nMdao;
	}

	Logger log = LoggerFactory.getLogger(getClass());

	@RequestMapping("member/login")
	public String LogIn() {
		return "member/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String LogIn(NormalMDto NMdto, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = NMdto.getId();
		String pw = NMdto.getPassword();
		boolean chkid = NMdto.isRememberId();
		boolean result = NMdao.login(id, pw);
		// DB연결
		log.debug("id = {}", id);
		log.debug("pw = {}", pw);
		log.debug("chk = {}", chkid);
		Cookie ck = new Cookie("rememberId", id);
		if (chkid) {
			// 쿠키 생성
			ck.setMaxAge(4*7*24*60*60);
		} else {
			ck.setMaxAge(0);
		}

		response.addCookie(ck);
		if(result == true)
		{
			session.setAttribute("accept",id);//accept라는 이름으로 세션에 id를 저장한다.
			return "redirect:login_ok";
			
		}
		else
		{
			return "redirect:login_nok";
		}
	}

	

	
}
