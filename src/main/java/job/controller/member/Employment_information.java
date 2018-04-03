package job.controller.member;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.BoardDto;
import job.bean.CompanyDto;
import job.bean.LikesDto;
import job.model.BoardDaoImpl;
import job.model.LikesDaoImpl;

@Controller
public class Employment_information {
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BoardDaoImpl bdao;
	
	@Autowired
	private LikesDaoImpl ldao;
	
	@RequestMapping("company/employment_information")
	public String employment_information_get(HttpServletRequest request, HttpSession session) {
		int no = Integer.parseInt(request.getParameter("no"));
		BoardDto bdto = bdao.info(no);
		CompanyDto cdto = bdao.info2(no);
		LikesDto ldto = new LikesDto();
		request.setAttribute("cdto", cdto);
		String company = cdto.getName();
		cdto.setName(company.toUpperCase());
		List<BoardDto> list = bdao.otherList(company, no);
		
		ldto.setEmail((String) session.getAttribute("accept"));
		ldto.setCompany(cdto.getName());
		boolean isLiked = ldao.isLiked(ldto);
		
		request.setAttribute("bdto", bdto);
		request.setAttribute("isLiked", isLiked);
		request.setAttribute("list", list);
		return "company/employment_information";
	}
	
	@RequestMapping(value = "company/employment_information", method=RequestMethod.POST)
	public String employment_information_post(LikesDto ldto,HttpServletRequest request, HttpSession session) {
		String email = (String) session.getAttribute("accept");
		ldto.setEmail(email);
		if(ldao.isLiked(ldto)){
			ldao.delete(ldto);
		}
		else {
			ldao.insert(ldto);
		}
		return "company/employment_information";
	}
}
