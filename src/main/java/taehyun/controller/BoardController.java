package taehyun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import taehyun.bean.BoardDto;
import taehyun.model.BoardDaoImpl;
 
@Controller
public class BoardController {
	@Autowired
	private BoardDaoImpl boardDao;
	
	@RequestMapping("board/list")
	public String list() {
		return "board/list";
	}
	
	@RequestMapping("board/companyhire")
	public String board(HttpServletRequest request) {
		int no = 1;
		if(request.getParameter("target")!=null && request.getParameter("target")!="") {
			no = Integer.parseInt(request.getParameter("target"));
		}
		System.out.println("no:"+no);
		BoardDto bdto = boardDao.searchTarget(no);
		request.setAttribute("bdto", bdto);
		return "board/companyhire";
	}
	
	@RequestMapping(value="board/company",method = RequestMethod.POST)
	public String board(BoardDto bdto, HttpSession session) {
		session.setAttribute("company", bdto);
		return "board/company_target";
	}
	@RequestMapping("board/company_target")
	public String board_detail() {
		return "board/company_target";
	}
	@RequestMapping("board/company_target")
	public String board_detail(BoardDto bdto, HttpSession session) {
		BoardDto bdto2 = (BoardDto)session.getAttribute("company");
		bdto.setCount(bdto2.getCount());
		bdto.setTitle(bdto2.getTitle());
		bdto.setSalary(bdto2.getSalary());
		bdto.setWorking(bdto2.getWorking());
		bdto.setCompany(bdto2.getCompany());
		session.invalidate();
		boardDao.insert(bdto);
		return "redirect:/";
	}
}