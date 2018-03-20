package job.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.manager.CompanyInfoParSer;

@Controller
public class HomeController {
	@RequestMapping("home")
	public String home() throws IOException {
		return "home";
	}
}
