package job.model;
 
import org.springframework.stereotype.Repository;

import job.bean.ReviewDto;

@Repository
public interface ReviewDao {
	void register(ReviewDto rdto);
	ReviewDto loadReview(int no);
}
