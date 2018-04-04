package job.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import job.bean.AdminDto;
import job.bean.BoardDto;
import job.bean.ResumeDto;
import job.model.BoardDaoImpl;
import job.model.ResumeDaoImpl;

@Controller
public class HomeController {
	@Autowired 
	private BoardDaoImpl boardDao;
	@Autowired
	private ResumeDaoImpl rdao;
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("home")
	public String home(HttpServletRequest request, Model model,@RequestParam(required = false, defaultValue = "1") int pageno,
			@RequestParam(required = false) String favSort,
			@RequestParam(required = false) String level_of_education,
			@RequestParam(required = false) String career,
			@RequestParam(required = false) String favRegion,
			@RequestParam(required = false) String foam_of_company,
			@RequestParam(required = false) String foam_of_employment,
			@RequestParam(required = false) String keyword) throws IOException {
		AdminDto adto = new AdminDto();
		//한페이지당 보여줄 데이터 갯수
		adto.setPagedatasize(10);
		//보여질 데이터의 첫번째번호
		adto.setStartdata((pageno - 1) * adto.getPagedatasize() + 1);
		//보여질 데이터의 마지막 번호
		adto.setEnddata(pageno * adto.getPagedatasize());
		//모든 데이터의 개수
		adto.setCount(boardDao.getCount(keyword,favRegion,favSort,foam_of_company,career,foam_of_employment,level_of_education));
		//총 페이지 수
		log.debug(String.valueOf(adto.getCount()));
		adto.setPagesize(adto.getCount() / adto.getPagedatasize());
		//한 블록당 보여줄 페이지 개수
		adto.setPageblocksize(5);
		//블록 첫번호
		adto.setPageblockstart(((pageno - 1) / adto.getPageblocksize() * adto.getPageblocksize()) + 1);
		//블록 끝번호
		adto.setPageblockend(adto.getPageblockstart() + adto.getPageblocksize() - 1);
		
		//총 개수/10의 나머지값이 있으면 페이지 1장 추가
		if (adto.getCount() % adto.getPagedatasize() != 0) {
			adto.setPagesize(adto.getPagesize() + 1);
		}
		//페이지 블록 끝번호가 총 페이지 수보다 크면
		//페이지 블록에 총 페이지수 넣기
		if (adto.getPageblockend() > adto.getPagesize()) {
			adto.setPageblockend(adto.getPagesize());
		}
		adto.setPageno(pageno);
		
		String email = (String)request.getSession().getAttribute("accept");
		ResumeDto rdto = rdao.searchTarget(email);
		model.addAttribute("rdto",rdto);
		
		List<BoardDto> list = boardDao.getList(adto.getStartdata(),adto.getEnddata());
		model.addAttribute("list", list);
		model.addAttribute("adto", adto);
		
		return "home";
	}
}
