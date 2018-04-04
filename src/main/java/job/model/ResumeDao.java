package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.ResumeDto;

@Repository 
public interface ResumeDao {
	void insert(ResumeDto rdto);
	void apply(ResumeDto rdto);
	
	List<ResumeDto> getList(String author);
	List<ResumeDto> applyList(int boardno);
	ResumeDto info(int no);
	ResumeDto searchTarget(String author);
	boolean delete(ResumeDto rdto);
	boolean edit(ResumeDto rdto);
	boolean connResume(String email, String title);
	boolean connBoard(int boardno, String email);
	boolean increaseView(ResumeDto rdto);
	List<ResumeDto> getResumeNo();
}