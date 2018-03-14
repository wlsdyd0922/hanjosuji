package job.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {
	
	@RequestMapping("member/register_personal")
	public String RegisterPersonal() {

		return "member/register_personal";
	}
	
	@RequestMapping("member/register_detail")
	public String RegisterDetail() {

		return "member/register_detail";
	}
	
	@RequestMapping("member/register_company")
	public String RegisterCompany() {

		return "member/register_company";
	}
	
	@RequestMapping("member/register_choose")
	public String RegisterChoose() {

		return "member/register_choose";
	}
}