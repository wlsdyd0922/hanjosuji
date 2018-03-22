package job.controller.member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDto;
import job.manager.SHA256;
import job.model.NormalMDaoImpl;

@Controller
public class LogInController {
	@Autowired
	private NormalMDaoImpl NMdao = new NormalMDaoImpl();
	@RequestMapping("login")
	public String LogIn(HttpServletRequest request) {
		return "login";
	}
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String LogIn(NormalMDto NMdto, HttpServletRequest request, HttpServletResponse response, Model model) {
		if (request.getSession().getAttribute("accept") != null) {
			request.getSession().removeAttribute("accept"); // 기존값을 제거해 준다.
		}
		
		if (request.getSession().getAttribute("companyaccept") != null) {
			request.getSession().removeAttribute("companyaccept"); // 기존값을 제거해 준다.
		}
		NMdto.setPw(new SHA256().On(NMdto.getPw()));

		Cookie ck = new Cookie("rememberId", NMdto.getEmail());
		if (NMdto.isRememberId()) {
			ck.setMaxAge(4 * 7 * 24 * 60 * 60);
		} else {
			ck.setMaxAge(0);
		}
		response.addCookie(ck);
		if (NMdao.login(NMdto.getEmail(), NMdto.getPw())) {
			request.getSession().setAttribute("accept", NMdto.getEmail());// accept라는 이름으로 세션에 id를 저장한다.
			request.getSession().setAttribute("companyaccept", NMdto.getEmail());// companyaccept라는 이름으로 세션에 id를 저장한다.
			request.getSession().setAttribute("company", NMdao.info(NMdto.getEmail()).getCompany());
			return "redirect:/";
		} else {
			model.addAttribute("error", true);
			return "redirect:/login";
		}
	}
	@RequestMapping("member/logout")
	public String LogOut(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}
}
