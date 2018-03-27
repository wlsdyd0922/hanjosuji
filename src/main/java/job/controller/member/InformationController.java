package job.controller.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import job.exception.ImageException;
import job.model.NormalMDaoImpl;
import job.model.ResumeDaoImpl;
import job.service.ImageService;

@Controller
@RequestMapping("member")
public class InformationController {
	@Autowired
	private ImageService imgservice;
	
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
