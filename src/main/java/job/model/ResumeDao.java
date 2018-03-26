package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.ResumeDto;

@Repository 
public interface ResumeDao {
	void insert(ResumeDto rdto);
	List<ResumeDto> getList(String author);
	ResumeDto searchTarget(String author);
	boolean delete(ResumeDto rdto);
	boolean edit(ResumeDto rdto);
	boolean connResume(String email, String title);
	boolean connBoard(int boardno, int resumeno);
}