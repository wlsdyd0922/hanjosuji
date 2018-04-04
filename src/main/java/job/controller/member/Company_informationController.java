package job.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String information(HttpServletRequest request, NormalMDto nmdto) {
		String email = (String) request.getSession().getAttribute("accept");
		System.out.println(email);
		nmdto = nmdao.info(email);
		request.setAttribute("nmdto", nmdto);
		CompanyDto cdto = cdao.searchTarget(nmdto.getCompany());
		request.setAttribute("nmdto", nmdto);
		request.setAttribute("cdto", cdto);
		String company = cdto.getName();
		List<BoardDto> noList = bdao.searchNo(company);
		for (BoardDto bdto : noList) {
			List<ResumeDto> resume = rdao.getResumeNo();
			for (ResumeDto rdto : resume) {
				if (bdto.getNo() == rdto.getBoardno()) {
					List<ResumeDto> list = rdao.applyList(rdto.getBoardno());
					for(ResumeDto r:list) {
						System.out.println(r.getTitle());
					}
					request.setAttribute("list", list);
				}
			}
		}
		return "member/company_information";
	}

}
