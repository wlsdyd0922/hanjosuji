package job.model;

import java.util.List;

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
	public ReviewDto loadReview(String company) {		
		String sql = "select * from review where company = ?";
		return jdbcTemplate.query(sql,extractor,company);
	}
	//리뷰 목록
	public List<ReviewDto> reviewList(String company){
		String sql = "select * from review where company = ?";
		return jdbcTemplate.query(sql, mapper,company);
	}
	//리뷰 카운트
	public int reviewCount(String company) {
		String sql = "select count(*) from review where company = ?";
		return jdbcTemplate.queryForObject(sql, Integer.class,company);
	}
	//리뷰 평점 평균
	public double reviewAvg(String company) {
		String sql = "select avg(grade) from review where company = ?";
		if(jdbcTemplate.queryForObject(sql, Double.class,company)==null) {
			return 0;
		}
		else {
		return jdbcTemplate.queryForObject(sql, Double.class,company);
		}
	}
}
