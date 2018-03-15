package job.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.ReviewDto;

@Controller
public class ReviewController {

	@RequestMapping("company/review")
	public String review() {
		return "company/review";
	}
	@RequestMapping(value="company/review",method = RequestMethod.POST)
	public String review(ReviewDto rdto, HttpServletRequest request) {
		
		return "redirect:/";
	}
	
}
