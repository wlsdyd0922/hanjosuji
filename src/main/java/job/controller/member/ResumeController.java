package job.controller.member;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import taehyun.bean.ResumeDto;
import taehyun.model.ResumeDaoImpl;

@Controller
@RequestMapping("resume")
public class ResumeController {
private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private ResumeDaoImpl rdao;
	
	@RequestMapping("register_resume")
	public String register(ResumeDto rdto)
	{
		rdao.insert(rdto);
		return "member/information";
	}
	
	
}
