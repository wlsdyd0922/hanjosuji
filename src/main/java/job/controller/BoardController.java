package job.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import job.bean.AdminDto;
import job.bean.BoardDto;
import job.bean.NormalMDto;
import job.model.BoardDaoImpl;
import job.model.NormalMDaoImpl;
 
@Controller
public class BoardController {
	@Autowired 
	private BoardDaoImpl boardDao;
	@Autowired
	private NormalMDaoImpl nmdao;
	private Logger log = LoggerFactory.getLogger(getClass());
	@RequestMapping("board/list")
	public String list(Model model,@RequestParam(required = false, defaultValue = "1") int pageno,
			@RequestParam(required = false) String sort,
			@RequestParam(required = false) String search) {
		AdminDto adto = new AdminDto();
		//한페이지당 보여줄 데이터 갯수
		adto.setPagedatasize(10);
		//보여질 데이터의 첫번째번호
		adto.setStartdata((pageno - 1) * adto.getPagedatasize() + 1);
		//보여질 데이터의 마지막 번호
		adto.setEnddata(pageno * adto.getPagedatasize());
		//모든 데이터의 개수
		adto.setCount(boardDao.getCount(sort,search));
		//총 페이지 수
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
		
		List<BoardDto> list = boardDao.getList(adto.getStartdata(),adto.getEnddata());
		model.addAttribute("list", list);
		return "board/list"; 
	}

	@RequestMapping("board/write")
	public String boardWrite(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");	//계정정보 받기
		//계정에서 회사 이름 가져와서 첨부하기 
		NormalMDto nmdto = nmdao.info(email);		
		request.setAttribute("company", nmdto.getCompany());
		return "board/write";
	}
	@RequestMapping(value="board/write",method=RequestMethod.POST)
	public String boardWrite(BoardDto bdto, HttpServletRequest request) {		
		if(request.getParameter("employee")!=null && request.getParameter("employee")!="") {
			bdto.setEmployee(Integer.parseInt(request.getParameter("employee")));
		}
		bdto.setTitle(request.getParameter("title"));
		if(request.getParameter("count")!=null && request.getParameter("count")!="") {
			bdto.setCount(Integer.parseInt(request.getParameter("count")));
		}
		
		boardDao.insert(bdto);
		return "redirect:/";
	}
	@RequestMapping("board/hirend")
	public String hirend(BoardDto bdto)
	{
		boardDao.emplEnd(bdto);
		return "board/list";
	}
	@RequestMapping("board/delete")
	public String delete(BoardDto bdto)
	{
		boardDao.delete(bdto);
		return "board/list";
	}
}