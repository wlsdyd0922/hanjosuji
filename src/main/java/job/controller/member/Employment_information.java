package job.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.model.NormalMDaoImpl;

@Controller
public class Employment_information {

	@Autowired
	private NormalMDaoImpl nmdao;
	
	@RequestMapping("company/employment_information")
	public String employment_information() {
		return "company/employment_information";
	}
}
