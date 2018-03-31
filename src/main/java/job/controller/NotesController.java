package job.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.CompanyDto;
import job.bean.NotesDto;
import job.model.CompanyDaoImpl;
import job.model.NormalMDaoImpl;
import job.model.NotesDaoImpl;

@Controller
//@RequestMapping("notes")
public class NotesController {
	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private NotesDaoImpl ntdao;
	@Autowired
	private CompanyDaoImpl cdao;
	@Autowired
	private NormalMDaoImpl nmdao;
	
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
	
	@RequestMapping("member/notes_send")
	public String sendlist(HttpServletRequest request) {
		String sender = (String)request.getSession().getAttribute("accept");
		List<NotesDto> list = ntdao.sendList(sender);
		request.setAttribute("notes_list", list);	
		return "member/notes_send";
	}
	
	@RequestMapping("member/notes_detail")
	public String noteDetail(HttpServletRequest request)
	{
		String email = (String)request.getSession().getAttribute("accept");
		int no = Integer.parseInt(request.getParameter("no"));
		NotesDto ntdto = ntdao.search(email, no);
		request.setAttribute("ntdto", ntdto);
		if(ntdto.getRead().equals("0"))
			ntdao.read(ntdto);
		return "member/notes_detail";
	}
	
	@RequestMapping("notes/send")
	public String noteSend(HttpServletRequest request)
	{
		request.getSession().setAttribute("sender",(String)request.getSession().getAttribute("accept"));
		return "notes/send";
	}
	
	@RequestMapping(value="notes/send",method=RequestMethod.POST)
	public String noteSend(HttpServletRequest request,NotesDto ntdto)
	{
		ntdto.setTitle(request.getParameter("notes_title"));
		String company = nmdao.getCompany(request.getParameter("sender"));
		ntdto.setEmail(request.getParameter("notes_to"));
		ntdto.setCompany(company);
		ntdto.setContents(request.getParameter("contents"));
		ntdto.setSender(request.getParameter("sender"));
		ntdao.insert(ntdto);
		return "member/notes";
	}
}