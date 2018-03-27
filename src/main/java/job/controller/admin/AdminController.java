package job.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import job.bean.CompanyDto;
import job.model.AdminDaoImpl;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private AdminDaoImpl addao = new AdminDaoImpl();
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("compacceptboard")
	public String cmpAcptBoard(HttpServletRequest request) {
		return "admin/compacceptboard";
	}
	
	@RequestMapping("compacceptboard_part")
	public String compacceptboard_part(Model model,
			@RequestParam(required=false, defaultValue="0") int type,
			@RequestParam(required=false, defaultValue="1") int pageno) {
		
		int pagedatasize=10;	//한 페이지당 보여줄 데이터 개수
		int enddata;			//데이터베이스상 페이지별 첫번째 데이터
		int startdata;			//데이터 베이스상 페이지별 마지막 데이터
		int count;				//데이터 베이스내 전체 데이터 개수
		int pagesize;			//전체 페이지 수
		int pageblockstart;		//페이지 블록 시작번호
		int pageblockend;		//페이지 블록 끝번호
		int pageblocksize;		//페이지 블록 당 페이징 개수
		
		//페이지별 데이터베이스내 데이터 시작 및 마지막을 구하여 sql이용 데이터 list구하기
		enddata = pageno*pagedatasize;
		startdata = (pageno-1)*pagedatasize+1;
		
		//type = 0 이면 미승인, type = 1이면 승인
		List<CompanyDto> list;
		count = addao.getCount(type);
		//전체 데이터 이용 페이지 수 구하기
		pagesize = count/pagedatasize;
		
		//페이지수를 구한후 나머지가 있다면 전체 페이지수 +1
		if(count%pagedatasize!=0) pagesize++;
		
		//페이지 각 블록별 시작 및 끝번호 구하기
		pageblocksize=5;
		pageblockstart = (pageno -1)/pageblocksize*pageblocksize+1;
		pageblockend = pageblockstart+pageblocksize-1;
		//페이지 블록 끝번호가 전체 페이지 수보다 크다면 페이지 블록 끝번호를 전체페이지 끝번호로 변겅
		if(pageblockend > pagesize) pageblockend=pagesize;
		
		if(type==2) {
			list = addao.CompAllList(startdata,enddata);
		}else {
			list = addao.CompChkList(type, startdata,enddata);
		}
		model.addAttribute("pageblocksize", pageblocksize);
		model.addAttribute("pageblockend", pageblockend);
		model.addAttribute("pageblockstart", pageblockstart);
		model.addAttribute("pagesize", pagesize);
		model.addAttribute("list", list);
		model.addAttribute("pageno", pageno);
		
		return "admin/compaccept_view";
	}
}
