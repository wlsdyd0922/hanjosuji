package job.controller;

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
import job.bean.ReviewDto;
import job.model.BoardDaoImpl;
import job.model.CompanyDaoImpl;
import job.model.ReviewDaoImpl;

@Controller
public class ReviewController {

	@Autowired
	private ReviewDaoImpl reviewDao;
	@Autowired
	private CompanyDaoImpl companyDao;
	@Autowired
	private BoardDaoImpl boardDao;
	private Logger log = LoggerFactory.getLogger(getClass());

	@RequestMapping("company/companyreview")
	public String review(HttpServletRequest request) {
		String company = request.getParameter("company"); //기업명 받기
		ReviewDto rdto = reviewDao.loadReview(company);
		List<ReviewDto> list = reviewDao.reviewList(company);
		CompanyDto cdto = companyDao.searchTarget(company);
		cdto.setName(company.toUpperCase());	//기업명 대문자로 전송
		int count = reviewDao.reviewCount(company);	//리뷰 개수
		double average = reviewDao.reviewAvg(company);		//리뷰 평점 평균
		String avg = String.format("%.1f", average);		//소수점 첫째짜리 까지 보여줌
		 
		BoardDto bdto = boardDao.info3(company); //회사이름으로 게시판 조회(채용정보 보여주기용)
		
		//채용정보 전체 불러오기
		int no = 0;
		List<BoardDto> list2 = boardDao.otherList(company, no);	
		request.setAttribute("list2", list2);
		
		request.setAttribute("rdto", rdto);
		request.setAttribute("list", list);
		request.setAttribute("count", count);
		request.setAttribute("avg", avg);
		request.setAttribute("cdto", cdto);
		request.setAttribute("bdto", bdto);
		
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
}
