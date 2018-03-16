package taehyun.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import taehyun.bean.ResumeDto;

@Repository 
public interface ResumeDao {
	void insert(ResumeDto idto);
	List<ResumeDto> getList();
}