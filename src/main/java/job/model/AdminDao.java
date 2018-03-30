package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.CompanyDto;

@Repository
public interface AdminDao {
	List<CompanyDto> compChkList(int chk, int sno, int eno, String sort, String search);
	// 회사 전체 목록 및 등록 승인페이지
	int getCount(int type, String sort, String search);
	boolean compDelete(int no);
	boolean compAccept(int no);
	List<CompanyDto> compAllList(int sno, int eno, String sort, String search);
	
}
