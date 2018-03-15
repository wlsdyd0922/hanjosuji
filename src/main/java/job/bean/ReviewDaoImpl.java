package job.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

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
		String sql = "insert into review values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
		Object[] args = {
				rdto.getNo(),rdto.getCompany(),rdto.getEnddate(),rdto.getType(),rdto.getTypedetail(),
				rdto.getPart(),rdto.getCareer(),rdto.getLocation(),rdto.getGrade(),
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
