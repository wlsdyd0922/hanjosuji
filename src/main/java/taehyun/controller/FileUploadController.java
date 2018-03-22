package taehyun.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import job.bean.ResumeDto;
import job.model.NormalMDaoImpl;
import job.model.ResumeDao;
import job.model.ResumeDaoImpl;

@Controller
public class FileUploadController{
	
	//Logger 등록
	private Logger log = LoggerFactory.getLogger(FileUploadController.class);
	
	//대문
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	//파일 올리기
	@RequestMapping("/upload")
	public String upload() {
		return "upload";
	}
	
	@RequestMapping("/face")
	public String face()
	{
		return "face";
	}
	
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping("/upload")
	public String upload(MultipartFile f) throws Exception {
		//log.debug("file = {}", f);
		if(
				!f.getOriginalFilename().endsWith(".hwp")
				&& !f.getOriginalFilename().endsWith(".docx")
				&& !f.getOriginalFilename().endsWith(".xls")
				&& !f.getOriginalFilename().endsWith(".pdf")
				&& !f.getOriginalFilename().endsWith(".pptx")
				&& !f.getOriginalFilename().endsWith(".ppt")
				) {
			throw new Exception("확장자 확인");
		}
		
		String savename = UUID.randomUUID().toString();
		
		//업로드된 파일에서 알아내야할 정보들 : 이름, 유형, 크기
		log.debug("이름 = {}", f.getOriginalFilename());
		log.debug("유형 = {}", f.getContentType());
		log.debug("크기 = {}", f.getSize());
		
		//실제로 저장하는 작업
		String path = servletContext.getRealPath("/upload");
		log.debug("path = {}", path);
		File dir = new File(path);
		if(!dir.exists()) dir.mkdirs();
		
		File target = new File(dir, savename);
		f.transferTo(target);
		//dao,dto 생성은 임시방편
//		ResumeDto idto = new ResumeDto();
//		ResumeDaoImpl dao = new ResumeDaoImpl();
//		//db에 추가하는 작업
//		idto.setFilename(f.getOriginalFilename());
//		idto.setFiletype(f.getContentType());
//		idto.setFilelen(f.getSize());
//		idto.setSavename(savename);
//		dao.insert(idto);
		
		return "redirect:/";
	}
	
	@RequestMapping("/face")
	public String face(MultipartFile f) throws Exception {
		//log.debug("file = {}", f);
		if(
				!f.getOriginalFilename().endsWith(".jpg")
				&& !f.getOriginalFilename().endsWith(".png")
				&& !f.getOriginalFilename().endsWith(".gif")
				) {
			throw new Exception("확장자 확인");
		}
		
		String savename = UUID.randomUUID().toString();
		
		//업로드된 파일에서 알아내야할 정보들 : 이름, 유형, 크기
		log.debug("이름 = {}", f.getOriginalFilename());
		log.debug("유형 = {}", f.getContentType());
		log.debug("크기 = {}", f.getSize());
		
		//실제로 저장하는 작업
		String path = servletContext.getRealPath("/face");
		log.debug("path = {}", path);
		File dir = new File(path);
		if(!dir.exists()) dir.mkdirs();
		
		File target = new File(dir, savename);
		f.transferTo(target);
		//dao,dto 생성은 임시방편
		NormalMDaoImpl dao = new NormalMDaoImpl();
		//db에 추가하는 작업
//		dao.face(savename,);
		
		return "redirect:/";
	}
	
	//파일 목록
	@RequestMapping("/list")
	public String list() {
		return "list";
	}
	
}
