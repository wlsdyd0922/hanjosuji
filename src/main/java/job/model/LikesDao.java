package job.model;

import org.springframework.stereotype.Repository;

import job.bean.LikesDto;
@Repository
public interface LikesDao {
	boolean insert(LikesDto ldto);
	boolean delete(LikesDto ldto);
}
