package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDto;
import job.bean.NotesDto;
import job.bean.ResumeDto;
import job.model.NormalMDaoImpl;
import job.model.NotesDaoImpl;
import job.model.ResumeDaoImpl;

@Controller
public class Check_applicationController {

	@Autowired
	private NormalMDaoImpl nmdao;
	
	@Autowired
	private ResumeDaoImpl rdao;
	
	@Autowired
	private NotesDaoImpl ndao;
	
	@RequestMapping("company/check_application")
	public String check_application_get(HttpServletRequest request) {
		int boardno = Integer.parseInt(request.getParameter("no"));
		ResumeDto rdto = rdao.info(boardno);
		request.setAttribute("rdto", rdto);
		NormalMDto nmdto = nmdao.info(rdto.getEmail());
		request.setAttribute("nmdto", nmdto);
		return "company/check_application";
	}
	
	@RequestMapping(value = "company/check_application", method=RequestMethod.POST)
	public String check_application_post(String email, String name, String company, String sender, HttpServletRequest request) {
		NotesDto ndto = new NotesDto();
		ndto.setEmail(email);
		ndto.setTitle("귀하의 합격을 축하드립니다.!");
		ndto.setContents(name + "님 축하드립니다. 저희 "+company+"에 합격하신 것을 진심으로 축하드립니다. 교육원 입교 일정은 사후에 개인적으로 통보해 드리겠습니다.");
		ndto.setCompany(company);
		ndto.setSender(sender);
		ndao.insert(ndto);
		
		return "redirect:/member/company_information";
	}
}
