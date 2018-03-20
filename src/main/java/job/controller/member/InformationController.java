package job.controller.member;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import job.exception.ImageException;
import job.model.NormalMDaoImpl;

@Controller
@RequestMapping("member")
public class InformationController {
	@Autowired
	private NormalMDaoImpl nmdao = new NormalMDaoImpl();
	@Autowired
	private ServletContext servletContext;
	
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("information")
	public String information(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		request.setAttribute("nmdto", nmdao.info(email));
		return "member/information";
	} 
	@RequestMapping(value="upload",method=RequestMethod.POST)
	public String imgUpload(MultipartFile file) throws ImageException, IllegalStateException, IOException {
		
		log.debug("file = {}", file);
		log.debug("filename = {}", file.getOriginalFilename());
		log.debug("filesize = {}", file.getSize());
//		
//		if(!file.getOriginalFilename().endsWith(".jpg")&&!file.getOriginalFilename().endsWith(".png")&&!file.getOriginalFilename().endsWith(".gif")) {
//			throw new ImageException("이미지는 jpg,png,gif 중에서만 사용 가능합니다");
//		}
//		String savename = UUID.randomUUID().toString();
//		String path = servletContext.getRealPath("/upload");
//		log.debug("path = {}", path);
//		
//		File dir = new File(path);
//		if(!dir.exists()) dir.mkdirs();
//		
//		File target = new File(dir, savename);
//		file.transferTo(target);
//		
		return "member/infomation";
	}
}
