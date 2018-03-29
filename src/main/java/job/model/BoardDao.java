package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.BoardDto;
import job.bean.CompanyDto;

@Repository
public interface BoardDao {
 
	boolean edit(BoardDto bdto);

	BoardDto info(int no);
	
	CompanyDto info2(int no);

	boolean delete(BoardDto bdto);

	List<BoardDto> getList();

	void insert(BoardDto bdto);

	boolean emplEnd(BoardDto bdto);

	

	List<BoardDto> searchList(String company, String location, String industry, String type, String career,
			String empltype);
}
