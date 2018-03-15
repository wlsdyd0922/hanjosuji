package job.controller.member;


import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import job.bean.NormalMDaoImpl;
import job.bean.NormalMDto;

@Controller
public class RegisterController {
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private NormalMDaoImpl nmdao;
	
	@RequestMapping("member/register_personal")
	public String RegisterPersonal() {

		return "member/register_personal";
	}
	@RequestMapping(value="member/register_personal",method=RequestMethod.POST)
	public String RegisterPersonal(NormalMDto mdto) {
		mdto.setPassword(SHA256(mdto.getPassword()));
		log.debug(mdto.getEmail());
		log.debug(mdto.getName());
		log.debug(mdto.getGender());
		log.debug(mdto.getPhone());
		log.debug(mdto.getBirth());
		log.debug(mdto.getPwQuiz());
		log.debug(mdto.getPwAns());
		log.debug(mdto.getPassword());
		//DB연결..
		nmdao.insert(mdto);
		
		return "redirect:/member/login";
	}
	
	@RequestMapping("member/register_detail")
	public String RegisterDetail() {

		return "member/register_detail";
	}
	
	@RequestMapping("member/register_company")
	public String RegisterCompany() {

		return "member/register_company";
	}
	
	@RequestMapping("member/register_choose")
	public String RegisterChoose() {

		return "member/register_choose";
	}
	private String SHA256(String str){
		String SHA = ""; 
		try{
			MessageDigest sh = MessageDigest.getInstance("SHA-256"); 
			sh.update(str.getBytes()); 
			byte byteData[] = sh.digest();
			StringBuffer sb = new StringBuffer(); 
			for(int i = 0 ; i < byteData.length ; i++){
				sb.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));
			}
			SHA = sb.toString();
		}catch(NoSuchAlgorithmException e){
			e.printStackTrace(); 
			SHA = null; 
		}
		return SHA;
	}
}