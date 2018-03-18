package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class Edit_resumeController {
	@RequestMapping("edit_resume")
	public String EditDetailResum() {
		return "member/edit_resume";
	} 
	@RequestMapping("edit_personal")
	public String EditPersonal() {
		return "member/edit_personal";
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
