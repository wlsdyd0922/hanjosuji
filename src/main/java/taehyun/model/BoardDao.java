package taehyun.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import taehyun.bean.BoardDto;

@Repository
public interface BoardDao {
	void insert(BoardDto bdto);
	List<BoardDto> getList();
	List<BoardDto> searchList(String company);
	BoardDto searchTarget(int no);
	boolean delete(BoardDto bdto);
	boolean edit(BoardDto bdto);
}