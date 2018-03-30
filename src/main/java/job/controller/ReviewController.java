package job.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.CompanyDto;
import job.bean.ReviewDto;
import job.model.BoardDaoImpl;
import job.model.ReviewDaoImpl;

@Controller
public class ReviewController {

	@Autowired
	private ReviewDaoImpl reviewDao;
	@Autowired
	private BoardDaoImpl bdao;
	private Logger log = LoggerFactory.getLogger(getClass());

	@RequestMapping("company/companyreview")
	public String review(HttpServletRequest request) {
		String company = request.getParameter("company"); //기업명 받기
		ReviewDto rdto = reviewDao.loadReview(company);
		//CompanyDto cdto = bdao.info2(no);
		//request.setAttribute("cdto", cdto);
		request.setAttribute("rdto", rdto);
		return "company/companyreview";
	}
	@RequestMapping(value="company/companyreview",method=RequestMethod.POST)
	public String review( HttpSession session,ReviewDto rdto) {
		session.setAttribute("review", rdto);
		
		return "company/review_detail";
	}
	
	
	@RequestMapping(value="company/review",method = RequestMethod.POST)
	public String review(ReviewDto rdto, HttpSession session) {
		session.setAttribute("review", rdto);
		return "company/review_detail";
	}
	@RequestMapping("company/review_detail")
	public String review_detail() {
		return "company/review_detail";
	}
	@RequestMapping(value="company/review_detail",method=RequestMethod.POST)
	public String review_detail(ReviewDto rdto, HttpSession session) {
		ReviewDto rdto2 = (ReviewDto)session.getAttribute("review");
		log.debug("company:",rdto2.getCompany());
		rdto.setCompany(rdto2.getCompany());
		rdto.setStatus(rdto2.getStatus());
		rdto.setType(rdto2.getType());
		rdto.setTypedetail(rdto2.getTypedetail());
		rdto.setCareer(rdto2.getCareer());
		rdto.setLocation(rdto2.getLocation());
		session.invalidate();
		reviewDao.register(rdto);
		return "redirect:/";
	}
	@RequestMapping("company/review_info")
	public String information(ReviewDto rdto) {
		return "company/review_info";
	}
	/*
	@RequestMapping("company/review_list")
	public String reviewList(HttpServletRequest request) {
		int no = 26;
		if(request.getParameter("no")!=null && request.getParameter("no")!="") {
			no = Integer.parseInt(request.getParameter("no"));
		}
		System.out.println("no:"+no);
		ReviewDto rdto = reviewDao.loadReview(no);
		request.setAttribute("rdto", rdto);
		System.out.println("company:"+rdto.getCompany());
		System.out.println("recommend:"+rdto.getRecommend());
		System.out.println("가입일:"+rdto.getReg());
		System.out.println("no:"+rdto.getNo());
		return "company/review_list";
	}
	*/
}
