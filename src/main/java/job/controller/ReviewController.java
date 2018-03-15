package job.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.ReviewDaoImpl;
import job.bean.ReviewDto;

@Controller
public class ReviewController {

	@Autowired
	private ReviewDaoImpl reviewDao;
	@RequestMapping("company/review")
	public String review() {
		return "company/review";
	}
	@RequestMapping(value="company/review",method = RequestMethod.POST)
	public String review(ReviewDto rdto, HttpServletRequest request) {
		rdto.setCompany(request.getParameter("company"));
		rdto.setStatus(request.getParameter("type"));
		rdto.setType(request.getParameter("type"));
		rdto.setTypedetail(request.getParameter("typedetail"));
		rdto.setCareer(request.getParameter("career"));
		rdto.setLocation(request.getParameter("location"));
	
		System.out.println("회사명 : "+rdto.getCompany());
		
		return "company/review_detail";
	}
	@RequestMapping("company/review_detail")
	public String review_detail() {
		return "company/review_detail";
	}
	@RequestMapping(value="company/review_detail",method=RequestMethod.POST)
	public String review_detail(ReviewDto rdto, HttpServletRequest request) {
		rdto.setGrade(Integer.parseInt(request.getParameter("grade")));
		rdto.setOnecomment(request.getParameter("onecomment"));
		rdto.setHopecomment(request.getParameter("hopecomment"));
		rdto.setWelfare(Integer.parseInt(request.getParameter("welfare")));
		rdto.setBalance(Integer.parseInt(request.getParameter("balance")));
		rdto.setExecutive(Integer.parseInt(request.getParameter("executive")));
		rdto.setRecommend(Integer.parseInt(request.getParameter("recommend")));
		reviewDao.register(rdto);
		System.out.println("회사 총점수:"+rdto.getGrade());
		return "redirect:/";
	}
	
}
