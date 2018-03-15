package job.bean;

public interface ReviewDao {
	void register(ReviewDto rdto);
	ReviewDto loadReview(int no);
}
