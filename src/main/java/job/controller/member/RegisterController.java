package job.controller.member;


import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import job.bean.CompanyDto;
import job.bean.NormalMDto;
import job.bean.ResumeDto;
import job.exception.ImageException;
import job.manager.SHA256;
import job.model.CompanyDaoImpl;
import job.model.NormalMDaoImpl;
import job.model.ResumeDaoImpl;

@Controller
@RequestMapping("register")
public class RegisterController {
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private NormalMDaoImpl nmdao;
	@Autowired
	private CompanyDaoImpl cdao;
	@Autowired
	private ResumeDaoImpl rdao;
	@Autowired
	private ServletContext servletContext;

	
	@RequestMapping("register_choose")
	public String RegisterChoose() {
		return "register/register_choose";
	}
	
	//일반 멤버 회원가입 페이지
	@RequestMapping("register_personal")
	public String RegisterPersonal() {
		return "register/register_personal";
	}
	//일반 멤버 회원가입 처리
	@RequestMapping(value="register_personal",method=RequestMethod.POST)
	public String RegisterPersonal(NormalMDto mdto, HttpServletRequest request) throws Exception {
		mdto.setPw(new SHA256().On(mdto.getPw()));
		//DB연결..
		if(!nmdao.register(mdto)) {
			throw new Exception("회원가입 실패");
		};
		return "redirect:/login";
	}
	
	//기업멤버 회원가입 페이지	
	@RequestMapping("register_company")
	public String RegisterCompany() {
		return "register/register_company";
	}
	
	@RequestMapping(value = "register_company",method = RequestMethod.POST)
	public String RegisterCompany(NormalMDto nmdto,HttpServletRequest request) {
		String sha = new SHA256().On(nmdto.getPw());
		log.debug(nmdto.getEmail());
		log.debug(sha);
		log.debug(nmdto.getPhone());
		log.debug(nmdto.getName());
		log.debug(nmdto.getPwquiz());
		log.debug(nmdto.getPwans());
		log.debug(nmdto.getCompany());
		log.debug(nmdto.getGrade());
		nmdao.register(nmdto);
		return "redirect:/";
	}
	
	@RequestMapping("compsearch")
	@ResponseBody      
	public String CompSearch(String compname) {
		log.debug("CompSearch({})", compname);
		return "register/register_company";
	}
	
	@RequestMapping("chksameid")
	@ResponseBody
	public String ChkIdSame(String email) {
		return String.valueOf(nmdao.ChkSameId(email));
	}
	
	@RequestMapping("register_detail")
	public String RegisterDetailGet(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		request.setAttribute("email", email);
		if(rdao.searchTarget(email)!=null)
			request.setAttribute("rdto",rdao.searchTarget(email));
		return "/register/register_detail";
	}
	
	@RequestMapping(value="register_detail",method = RequestMethod.POST)
	public String RegisterDetailPost(ResumeDto rdto, HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		if(rdao.searchTarget(email)!=null)
		{	
			rdao.edit(rdto);
		}else {
			rdao.insert(rdto);
		}
		return "redirect:/member/information";
	}
	@RequestMapping("find_company")
	public String register_newcompany() {
		return "register/find_company";
	}
	
//	@RequestMapping(value="find_company",method=RequestMethod.POST)
//	public String register_newcompany(HttpServletRequest request) {
//		String name = request.getParameter("company_name");
//		List<CompanyDto> list = adminDao.nameList(name);
//		if(list.isEmpty()) {
//			log.debug("리스트없음");
//		}
//		request.setAttribute("list", list);
//		return "register/find_company";
//	}
	@RequestMapping("find_company_part")
	public String find_company_part(HttpServletRequest request) {
		String name = request.getParameter("company_name").toLowerCase();
		System.out.println(name); 
		List<CompanyDto> list = cdao.nameList(name);
		if(list.isEmpty()) {
			log.debug("리스트없음");
			return "register/find_company_nok";
		}
		request.setAttribute("list", list);	
		return "register/find_company_ok";
	}
	@RequestMapping("register_newcompany")
	public String register_newcompany_get() {
		return "register/register_newcompany";
	}
	
	@RequestMapping(value="register_newcompany", method = RequestMethod.POST)
	public String register_newcompany_post(MultipartHttpServletRequest mRequest,Model model) throws Exception {
//		log.debug("드러옴");
//		String aa = request.getParameter("name");
//		log.debug(aa);
//		MultipartFile file = request.getFile("file");
//		log.debug(file.getOriginalFilename());
		
		CompanyDto cdto = new CompanyDto(mRequest);
		MultipartFile file = mRequest.getFile("file");
		String savename = UUID.randomUUID().toString();
		String enctype = file.getContentType();
		
		
		cdto.setImgencoding(enctype);
		cdto.setImgname(savename);
		
		//파일 생성
		
		//파일 uuid 포함 db저장
		
		if(!cdao.insert(cdto)) {
			throw new Exception("회원가입 실패");
		}else {
			if (!file.getOriginalFilename().endsWith(".jpg") && !file.getOriginalFilename().endsWith(".png")
					&& !file.getOriginalFilename().endsWith(".gif")) {
				throw new ImageException("이미지는 jpg,png,gif 중에서만 사용 가능합니다");
			}
			
			String path = servletContext.getRealPath("/upload");
			

			File dir = new File(path);
			log.debug(path);
			
			if (!dir.exists()) dir.mkdirs();

			File target = new File(dir, savename);
			file.transferTo(target);
			
			model.addAttribute("msg", "회사 등록 성공\n관리자 승인을 기다리세요"); 
			
		}
		return "register/register_newcompany";
	}
}