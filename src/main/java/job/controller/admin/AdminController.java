package job.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.bean.CompanyDto;
import job.model.AdminDaoImpl;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private AdminDaoImpl addao = new AdminDaoImpl(); 
	@RequestMapping("compacceptboard")
	public String cmpAcptBoard(HttpServletRequest request) {
		
		int pangNo=2;
		int endpage = pangNo*10;
		int startpage = (pangNo-1)*10+1;
		
		List<CompanyDto> list = addao.CompList(startpage,endpage);
		request.setAttribute("list", list);
		return "admin/compacceptboard";
	}
}
