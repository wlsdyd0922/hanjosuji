package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.bean.NormalMDto;
import job.model.NormalMDaoImpl;

@Controller
public class InformationController {
	@Autowired
	private NormalMDaoImpl nmdao = new NormalMDaoImpl();
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/member/information")
	public String information(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		request.setAttribute("nmdto", nmdao.info(email));
		return "member/information";
	} 
}
