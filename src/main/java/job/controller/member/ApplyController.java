package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.ResumeDto;
import job.model.ResumeDaoImpl;

@Controller
public class ApplyController {
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private ResumeDaoImpl rdao;
	
	@RequestMapping("member/apply")
	public String apply(HttpServletRequest request) {
		int no = Integer.parseInt(request.getParameter("no"));
		return "redirect:/";
	}
	@RequestMapping(value="member/apply", method=RequestMethod.POST)
	public String apply(HttpServletRequest request,ResumeDto rdto) {
		String name = request.getParameter("resume_name");		//이력서 제목
		int no = Integer.parseInt(request.getParameter("no"));	//게시판 번호
		//세션 불러와서 이력서 정보 조회
		String email = (String)request.getSession().getAttribute("accept");
		rdto = rdao.searchTarget(email);
		//이력서DTO에 boardno(외래키),이력서 제목 변경
		rdto.setBoardno(no);
		rdto.setTitle(name);
		//기업에 이력서 지원하기
		rdao.apply(rdto);
		return "redirect:/";
	}
}
