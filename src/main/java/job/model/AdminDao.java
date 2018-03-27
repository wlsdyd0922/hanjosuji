package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.CompanyDto;

@Repository
public interface AdminDao {
	// 회사 전체 목록 및 등록 승인페이지
	
	//미승인 회사목록
	int getNCCount();
	//승인 회사 목록
	int getOCCount();
	//전체 회사 목록
	int getAllCount();
	List<CompanyDto> CompAllList(int sno, int eno);
	List<CompanyDto> CompChkList(int chk, int sno, int eno);
	int getCount(int type);
}
