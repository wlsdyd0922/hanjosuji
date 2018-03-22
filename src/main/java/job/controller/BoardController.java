package job.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.BoardDto;
import job.model.BoardDaoImpl;
 
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

	@RequestMapping("board/write")
	public String board_detail() {
		return "board/write";
	}
	@RequestMapping(value="board/write",method=RequestMethod.POST)
	public String board_detail(BoardDto bdto, HttpServletRequest request) {
		bdto.setEmployee(Integer.parseInt(request.getParameter("employee")));
		bdto.setTitle(request.getParameter("title"));
		bdto.setSalary(request.getParameter("salary"));
		bdto.setWorking(request.getParameter("working"));
		bdto.setContesnts(request.getParameter("contents"));
		bdto.setCompany(request.getParameter("company"));
		boardDao.insert(bdto);
		return "redirect:/";
	}
}