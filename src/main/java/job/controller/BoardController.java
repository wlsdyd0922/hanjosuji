package job.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	private Logger log = LoggerFactory.getLogger(getClass());
	@RequestMapping("board/list")
	public String list(HttpServletRequest request) {

		List<BoardDto> list = boardDao.getList();
		request.setAttribute("list", list);
		return "board/list"; 
	}
	
	@RequestMapping("board/companyhire")
	public String board(HttpServletRequest request) {
		int no = 1;
		if(request.getParameter("target")!=null && request.getParameter("target")!="") {
			no = Integer.parseInt(request.getParameter("target"));
		}
		BoardDto bdto = boardDao.searchTarget(no);
		request.setAttribute("bdto", bdto);
		return "board/companyhire";
	}

	@RequestMapping("board/write")
	public String boardWrite() {
		return "board/write";
	}
	@RequestMapping(value="board/write",method=RequestMethod.POST)
	public String boardWrite(BoardDto bdto, HttpServletRequest request) {		
		bdto.setTitle(request.getParameter("title"));
		if(request.getParameter("employee")!=null && request.getParameter("employee")!="") {
			bdto.setEmployee(Integer.parseInt(request.getParameter("employee")));
		}
		bdto.setTitle(request.getParameter("title"));
		if(request.getParameter("count")!=null && request.getParameter("count")!="") {
			bdto.setCount(Integer.parseInt(request.getParameter("count")));
		}
		bdto.setState(request.getParameter("state"));
		bdto.setSalary(request.getParameter("salary"));
		bdto.setWorking(request.getParameter("working"));
		bdto.setContents(request.getParameter("contents"));
		bdto.setCompany(request.getParameter("company"));
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