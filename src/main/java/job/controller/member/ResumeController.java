package job.controller.member;

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
	
	@RequestMapping("resume_detail")
	public String resume_detail()
	{
		return "member/resume_detail";
	}
	
	@RequestMapping("resume_delete")
	public String resume_delete(ResumeDto rdto)
	{
		rdao.delete(rdto);
		return "member/information";
	}
}
