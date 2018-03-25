package job.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.AdminDto;
import job.model.AdminDaoImpl;
import job.model.NormalMDaoImpl;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private AdminDaoImpl adao;
	
	@RequestMapping("compacceptboard")
	public String cmpAcptBoard(HttpServletRequest request) {
		
		int current_page;
		int begin;
		int end;
		
		int show_page = 10;
		//10개씩 보여주겠다.
		
		int total_data = adao.count_page();
		//등록 목록에 있는 모든 데이터 갯수
		
		int total_page = (total_data-1)/show_page+1;
		//10개씩 보여주는데 필요한 페이지 수
		
		try{
			current_page = Integer.parseInt(request.getParameter("current_page"));
			//보여주기 원하는 페이지를 입력 받는다.
		}
		catch(Exception e)
		{	
			current_page = 1;
			//예외발생하면 1 페이지로 돌아 간다.
		}
		
		end = current_page*show_page;
		//화면에 보여줄 게시글의 끝번호 예)10개씩 보여 줄때는 10,20,30,....
		begin = end -(show_page-1);
		//화면에 보여줄 게시글의 첫번째 번호 예)1,11,21,31....
		
		List<AdminDto> list = adao.list(end,begin);
		//시작 번호와 끝번호에 맞춰서 개시글을 불러온다. 
		
		request.setAttribute("current_page", current_page);
		request.setAttribute("total_page", total_page);
		request.setAttribute("list", list);
		return "admin/compacceptboard";
	}
	
}
