package job.model;

import java.util.List;

import job.bean.BoardDto;

public interface BoardDao {
 
	boolean edit(BoardDto bdto);

	List<BoardDto> searchList(String company);

	boolean delete(BoardDto bdto);

	List<BoardDto> getList();

	void insert(BoardDto bdto);

}
