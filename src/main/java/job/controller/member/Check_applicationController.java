package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.bean.NormalMDto;
import job.bean.ResumeDto;
import job.model.NormalMDaoImpl;
import job.model.ResumeDaoImpl;

@Controller
public class Check_applicationController {

	@Autowired
	private NormalMDaoImpl nmdao;
	@Autowired
	private ResumeDaoImpl rdao;
	@RequestMapping("company/check_application")
	public String check_application(HttpServletRequest request) {
		int boardno = Integer.parseInt(request.getParameter("no"));
		ResumeDto rdto = rdao.info(boardno);
		request.setAttribute("rdto", rdto);
		NormalMDto nmdto = nmdao.info(rdto.getEmail());
		request.setAttribute("nmdto", nmdto);
		return "company/check_application";
	}
}
