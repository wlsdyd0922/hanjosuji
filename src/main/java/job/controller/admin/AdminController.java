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
		List<CompanyDto> list = addao.CompList();
		request.setAttribute("list", list);
		return "admin/compacceptboard";
	}
}
