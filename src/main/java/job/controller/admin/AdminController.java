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
import org.springframework.web.bind.annotation.ResponseBody;

import job.bean.AdminDto;
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
	public String compacceptboard_part(Model model, @RequestParam(required = false, defaultValue = "0") int type,
			@RequestParam(required = false, defaultValue = "1") int pageno,
			@RequestParam(required = false) String sort,
			@RequestParam(required = false) String search) {

		AdminDto adto = new AdminDto();
		adto.setPagedatasize(10);
		adto.setEnddata(pageno * adto.getPagedatasize());
		adto.setStartdata((pageno - 1) * adto.getPagedatasize() + 1);
		adto.setCount(addao.getCount(type,sort,search));
		adto.setPagesize(adto.getCount() / adto.getPagedatasize());
		adto.setPageblocksize(5);
		adto.setPageblockstart(((pageno - 1) / adto.getPageblocksize() * adto.getPageblocksize()) + 1);

		adto.setPageblockend(adto.getPageblockstart() + adto.getPageblocksize() - 1);

		if (adto.getCount() % adto.getPagedatasize() != 0) {
			adto.setPagesize(adto.getPagesize() + 1);
		}
		if (adto.getPageblockend() > adto.getPagesize()) {
			adto.setPageblockend(adto.getPagesize());
		}
		adto.setPageno(pageno);

		List<CompanyDto> list;
		if (type == 2) {
			list = addao.compAllList(adto.getStartdata(), adto.getEnddata(), sort, search);
		} else {
			list = addao.compChkList(type, adto.getStartdata(), adto.getEnddata(), sort, search);
		}
		
		model.addAttribute("adto", adto);
		model.addAttribute("list", list);
		model.addAttribute("sort", sort);
		model.addAttribute("search", search);

		return "admin/compaccept_view";
	}

	@RequestMapping("compdelete")
	@ResponseBody
	public String compdelete(int no, HttpServletRequest request) {
		if (addao.compDelete(no)) {
			log.debug("성공");
		} else {
			log.debug("실패");
		}
		return null;
	}

	@RequestMapping("compaccept")
	@ResponseBody
	public String compAccept(int no, HttpServletRequest request) {
		if (addao.compAccept(no)) {
			log.debug("성공");
		} else {
			log.debug("실패");
		}
		return null;
	}
}
