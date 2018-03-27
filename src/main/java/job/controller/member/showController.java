package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.model.NormalMDaoImpl;
import job.model.ResumeDaoImpl;

@Controller
@RequestMapping("member")
public class showController {
	
	@Autowired
	private NormalMDaoImpl nmdao;
	
	@Autowired
	private ResumeDaoImpl rdao;

	@RequestMapping("introduction_paper")
	public String introduction_paper() {
		return "member/introduction_paper";
	}

	@RequestMapping("resume")
	public String resume() {
		return "member/resume";
	}
	
	@RequestMapping("show_detail")
	public String show_detail(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		if(rdao.searchTarget(email)!=null)
			request.setAttribute("rdto",rdao.searchTarget(email));
		return "member/show_detail";
	}
	
	@RequestMapping("show_personal")
	public String show_personal(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		request.setAttribute("nmdto", nmdao.info(email));
		return "member/show_personal";
	}
	
	
}
