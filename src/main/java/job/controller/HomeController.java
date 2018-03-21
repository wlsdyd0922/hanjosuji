package job.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.manager.CompanyInfoParSer;

@Controller
public class HomeController {
	@RequestMapping("home")
	public String home(HttpSession session, HttpServletRequest request) throws IOException {
		request.getSession().setAttribute("accept", "1234");// accept라는 이름으로 세션에 id를 저장한다.
		return "home";
	}
}
