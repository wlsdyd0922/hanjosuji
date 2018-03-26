package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.bean.ResumeDto;
import job.model.ResumeDaoImpl;

@Controller
@RequestMapping("resume")
public class ResumeController {
	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private ResumeDaoImpl rdao;
	//이력서 등록
	@RequestMapping("register_resume")
	public String register(ResumeDto rdto) {
		rdao.insert(rdto);
		return "member/information";
	}
	
	@RequestMapping("resume")
	public String resume()
	{
		return "member/resume";
	}
	//이력서 상세보기
	@RequestMapping("resume_detail")
	public String resume_detail(HttpServletRequest request)
	{
		String email = (String) request.getSession().getAttribute("accept");
		request.setAttribute("rdto", rdao.searchTarget(email));
		return "member/resume_detail";
	}
	//이력서 삭제
	@RequestMapping("resume_delete")
	public String resume_delete(ResumeDto rdto)
	{
		rdao.delete(rdto);
		return "member/information";
	}
}
