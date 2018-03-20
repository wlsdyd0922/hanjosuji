package taehyun.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import taehyun.bean.boardDto;

@Repository
public interface boardDao {
	void insert(boardDto bdto);
	List<boardDto> getList();
	List<boardDto> searchList(String company);
	boolean delete(boardDto bdto);
}
