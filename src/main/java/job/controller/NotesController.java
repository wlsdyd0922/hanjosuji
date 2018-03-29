package job.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NotesDto;
import job.model.NotesDaoImpl;

@Controller
//@RequestMapping("notes")
public class NotesController {
	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private NotesDaoImpl ntdao;
	
	@RequestMapping(value="register_notes",method=RequestMethod.POST)
	public String register(NotesDto ntdto)
	{
		ntdao.insert(ntdto);
		return "member/notes";
	}
	
	@RequestMapping("member/notes")
	public String recivelist(HttpServletRequest request) {
		String email = (String)request.getSession().getAttribute("accept");
		List<NotesDto> list = ntdao.getList(email);
		request.setAttribute("notes_list", list);	
		return "member/notes";
	}
	
	@RequestMapping("member/notes_detail")
	public String noteDetail(HttpServletRequest request)
	{
		String email = (String)request.getSession().getAttribute("accept");
		int no = Integer.parseInt(request.getParameter("no"));
		NotesDto ntdto = ntdao.search(email, no);
		request.setAttribute("ntdto", ntdto);
		return "member/notes_detail";
	}
}
