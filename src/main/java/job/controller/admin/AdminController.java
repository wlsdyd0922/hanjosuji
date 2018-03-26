package job.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import job.bean.CompanyDto;
import job.model.AdminDaoImpl;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private AdminDaoImpl addao = new AdminDaoImpl();
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("compacceptboard")
	public String cmpAcptBoard(HttpServletRequest request,String data) {
		log.debug("data={}",data);
		int chk=0;
		if(data==null) {
			chk=0;
		}else {
			chk=Integer.parseInt(data);
		}
		log.debug(String.valueOf(chk));
		
		int pageno;				//현제 페이지 번호
		int pagedatasize=10;	//한 페이지당 보여줄 데이터 개수
		int enddata;			//데이터베이스상 페이지별 첫번째 데이터
		int startdata;			//데이터 베이스상 페이지별 마지막 데이터
		int count;				//데이터 베이스내 전체 데이터 개수
		int pagesize;			//전체 페이지 수
		int pageblockstart;		//페이지 블록 시작번호
		int pageblockend;		//페이지 블록 끝번호
		int pageblocksize;		//페이지 블록 당 페이징 개수
		
		//뷰에서 받은 pageno가 null이라면 강제로 1 저장 아니면 param저장
		if(request.getParameter("pageno")==null) pageno=1;
		else pageno=Integer.parseInt(request.getParameter("pageno"));
		
		//페이지별 데이터베이스내 데이터 시작 및 마지막을 구하여 sql이용 데이터 list구하기
		enddata = pageno*pagedatasize;
		startdata = (pageno-1)*pagedatasize+1;
		List<CompanyDto> list = addao.CompList(chk, startdata,enddata);
		
		//데이터베이스 내 전체 데이터 개수 구하기
		count = addao.getCount();
		
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
		
		request.setAttribute("pageblocksize", pageblocksize);
		request.setAttribute("pageblockend", pageblockend);
		request.setAttribute("pageblockstart", pageblockstart);
		request.setAttribute("pagesize", pagesize);
		request.setAttribute("list", list);
		request.setAttribute("pageno", pageno);
		return "admin/compacceptboard";
	}
}
