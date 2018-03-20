package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("member")
public class EditController {
	
	@RequestMapping("edit_personal")
	public String EditPersonal(HttpServletRequest request) {
		request.getAttribute("nmdto");
		
		return "member/edit_personal";
	} 
	@RequestMapping(value="edit_personal",method=RequestMethod.POST)
	public String EditPersonal1() {
		return "member/edit_personal";
	} 

	
	@RequestMapping("edit_resume")
	public String EditDetailResum() {
		return "member/edit_resume";
	} 

	@RequestMapping("edit_introduction_paper")
	public String EditIntroduction_paper() {
		return "member/edit_introduction_paper";
	} 
	@RequestMapping("edit_detail")
	public String EditDetail() {
		return "member/edit_detail";
	} 
}
