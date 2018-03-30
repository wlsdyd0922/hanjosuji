package job.model;


import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.LikesDto;
@Repository
public interface LikesDao {
	boolean insert(LikesDto ldto);
	boolean delete(LikesDto ldto);
	List<LikesDto> searchList(String email);
	boolean isLiked(LikesDto ldto);
}
