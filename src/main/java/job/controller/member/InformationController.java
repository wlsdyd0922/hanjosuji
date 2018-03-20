package job.controller.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import job.exception.ImageException;
import job.model.NormalMDao;
import job.service.ImageInput;

@Controller
@RequestMapping("member")
public class InformationController {
	@Autowired
	private NormalMDao nmdao;
	@Autowired
	private ImageInput imginput;
	private Logger log = LoggerFactory.getLogger(getClass());

	@RequestMapping("information")
	public String information(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		request.setAttribute("nmdto", nmdao.info(email));
		return "member/information";
	}

	@RequestMapping(value = "upload", method = RequestMethod.POST)
	public String imgUpload(MultipartFile file,HttpServletRequest request) throws ImageException, IllegalStateException, IOException {
		String email = (String) request.getSession().getAttribute("accept");
		imginput.input(file,email);
		return "redirect:/member/infomation";
	}
}
