package job.controller.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import job.bean.NormalMDto;
import job.exception.ImageException;
import job.manager.SHA256;
import job.model.NormalMDaoImpl;
import job.model.ResumeDaoImpl;
import job.service.ImageService;
import job.service.ImageServiceImpl;

@Controller
@RequestMapping("member")
public class InformationController {
	@Autowired
	private ImageServiceImpl imgservice;
	
	@Autowired
	private NormalMDaoImpl nmdao;
	
	@Autowired
	private ResumeDaoImpl rdao;

//	private Logger log = LoggerFactory.getLogger(getClass());

	@RequestMapping("information")
	public String information(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		request.setAttribute("nmdto", nmdao.info(email));
		request.setAttribute("rdto", rdao.searchTarget(email));
		return "member/information";
	}
	
	@RequestMapping(value = "member_delete", method = RequestMethod.POST)
	@ResponseBody
	public String member_delete(NormalMDto nmdto, HttpSession session, HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		String password = new SHA256().On(nmdto.getPw());
		String result = null;
		if(nmdao.login(email, password)) {
			imgservice.delete(request);
			nmdao.member_delete(email, password);
			session.invalidate();
			result = "true";
		}
		return result;
	}

	@RequestMapping(value = "upload", method = RequestMethod.POST)
	@ResponseBody
	public String imgUpload(MultipartHttpServletRequest request)
			throws ImageException, IllegalStateException, IOException {
		String email = (String) request.getSession().getAttribute("accept");
		imgDelete(request);
		imgservice.input(request, email);
		return "redirect:/member/infomation";
	}

	@RequestMapping("delete")
	@ResponseBody
	public String imgDelete(HttpServletRequest request) {
		imgservice.delete(request);
		return "redirect:/member/information";
	}
}
