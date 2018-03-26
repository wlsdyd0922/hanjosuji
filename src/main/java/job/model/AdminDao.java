package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.CompanyDto;

@Repository
public interface AdminDao {
	// 회사 전체 목록 및 등록 승인페이지
	List<CompanyDto> CompList(int sno, int eno);
}
