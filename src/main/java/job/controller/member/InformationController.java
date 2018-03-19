package job.controller.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.bean.NormalMDaoImpl;

@Controller
public class InformationController {
	@Autowired
	private NormalMDaoImpl nmdao = new NormalMDaoImpl();
	
	@RequestMapping("/member/information")
	public String information(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
//		NormalMDto nmdto = nmdao.info(email);
//		nmdto.getBirth();
//		nmdto.getCareer();
//		nmdto.getCertification();
//		nmdto.getCompany();
//		nmdto.getEdu();
//		nmdto.getGender();
		
		//세션에 들어있는 아이디 이용 DB에서 정보 추출..
		//기업회원 / 일반회원에 따라 다르게 .. 일반회원중 관리자라면..? / ADMIN
		/*
		 * 생년월일
		 * 사진이 저장되있다면 사진 추출
		 * 선호 기업			COMPANY
		 * 선호 기업종목	   		INDUSTRY
		 * 경력유무			CAREER
		 * 이력서 등록 여부..? 	EDU(학력?),prize(수상경력?),CERTIFICATION(자격증?)// 이력서 페이지에서 해야하나..
		 * 자기소개서 등록 여부..?
		 * 이름?
		 * 전화번호?
		 * 포트폴리오는 어디서?
		 */
		
		
		return "member/information";
	} 
}
