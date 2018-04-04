package job.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.bean.BoardDto;
import job.bean.CompanyDto;
import job.bean.NormalMDto;
import job.bean.ResumeDto;
import job.bean.ReviewDto;
import job.model.BoardDaoImpl;
import job.model.CompanyDaoImpl;
import job.model.NormalMDaoImpl;
import job.model.ResumeDaoImpl;

@Controller
public class Company_informationController {
	
	@Autowired
	private NormalMDaoImpl nmdao;
	@Autowired
	private CompanyDaoImpl cdao;
	@Autowired
	private BoardDaoImpl bdao;
	@Autowired
	private ResumeDaoImpl rdao;
	private Logger log = LoggerFactory.getLogger(getClass());
	@RequestMapping("member/company_information")
	public String information(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		NormalMDto nmdto = nmdao.info(email);
		CompanyDto cdto = cdao.searchTarget(email);
		request.setAttribute("nmdto", nmdao.info(email));
		request.setAttribute("cdto", cdto);
		//resume boardno = board no 일치하는거...?
		String company = cdto.getName();
		System.out.println("company:"+company);
		List<BoardDto> noList = bdao.searchNo(company);
		for(BoardDto bdto : noList) {
		System.out.println("no:"+bdto.getNo());
		int boardno = rdao.getResumeNo();
			if(bdto.getNo()==boardno) {
				List<ResumeDto> list = rdao.applyList(boardno);
				request.setAttribute("list", list);
			}
			else {
				System.out.println("없어");
			}
		}
		
		return "member/company_information";
	}

}
