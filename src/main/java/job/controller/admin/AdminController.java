package job.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {
	@RequestMapping("compacceptboard")
	public String cmpAcptBoard() {
		return "admin/compacceptboard";
	}
}
