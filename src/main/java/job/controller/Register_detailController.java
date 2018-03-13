package job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Register_detailController {
	@RequestMapping("member/register_detail")
	public String RegisterD() {

		return "member/register_detail";
	}
}
