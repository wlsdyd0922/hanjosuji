package job.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.bean.BoardDto;
import job.model.BoardDaoImpl;

@Controller
public class HomeController {
	@Autowired BoardDaoImpl boardDao;
	
	@RequestMapping("home")
	public String home(HttpServletRequest request) throws IOException {
		List<BoardDto> list = boardDao.getList();
		request.setAttribute("list", list);
		return "home";
	}
}
