package job.controller.member;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.bean.BoardDto;
import job.bean.CompanyDto;
import job.model.BoardDaoImpl;

@Controller
public class Employment_information {

	@Autowired
	private BoardDaoImpl bdao;
	
	@RequestMapping("company/employment_information")
	public String employment_information(HttpServletRequest request) {
		int no = Integer.parseInt(request.getParameter("no"));
		BoardDto bdto = bdao.info(no);
		request.setAttribute("bdto", bdto);
		CompanyDto cdto = bdao.info2(no);
		request.setAttribute("cdto", cdto);
		
		return "company/employment_information";
	}
}
