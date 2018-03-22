package job.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.ReviewDto;
 
@Repository("reviewDao")
public class ReviewDaoImpl {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private RowMapper<ReviewDto> mapper = (rs, index)->{
		return new ReviewDto(rs);
	};
	private ResultSetExtractor<ReviewDto> extractor = (rs)->{
		if(rs.next()) return new ReviewDto(rs);
		else return null;
	};
	//리뷰 등록
	public void register(ReviewDto rdto) {
		String sql = "insert into review values(review_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
		Object[] args = {
				rdto.getCompany(),rdto.getStatus(),rdto.getType(),rdto.getTypedetail(),
				rdto.getCareer(),rdto.getLocation(),rdto.getGrade(),
				rdto.getOnecomment(),rdto.getHopecomment(),rdto.getWelfare(),
				rdto.getBalance(),rdto.getExecutive(),rdto.getRecommend()
		};
		jdbcTemplate.update(sql,args);
	}
	//상세 리뷰
	public ReviewDto loadReview(int no) {		
		String sql = "select * from review where no=?";
		return jdbcTemplate.query(sql,extractor,no);
	}
	
	
	
	
	
	
	
}
