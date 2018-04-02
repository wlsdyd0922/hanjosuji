package job.model;
 
import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.ReviewDto;

@Repository
public interface ReviewDao {
	void register(ReviewDto rdto);
	ReviewDto loadReview(String company);
	List<ReviewDto> reviewList();
}
