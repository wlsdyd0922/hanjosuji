package job.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.CompanyDto;
import job.model.CompanyDaoImpl;

@Controller
public class Register_newcompanyController {

	@Autowired
	private CompanyDaoImpl cdao;
	
	@RequestMapping("register/register_newcompany")
	public String register_newcompany_get() {
		return "register/register_newcompany";
	}
	
	@RequestMapping(value="register/register_newcompany", method = RequestMethod.POST)
	public String register_newcompany_post(CompanyDto cdto) throws Exception {
		if(!cdao.insert(cdto)) {
			throw new Exception("회원가입 실패");
		}
		
		return "register/register_newcompany";
	}
}
