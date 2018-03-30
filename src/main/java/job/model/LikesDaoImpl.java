package job.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.LikesDto;
@Repository("LikesDao")
public class LikesDaoImpl implements LikesDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private ResultSetExtractor<LikesDto> extractor = (rs)->{
		if(rs.next()) return new LikesDto(rs);
		else return null;
	};
	private RowMapper<LikesDto> mapper = (rs, idx)->{
		return new LikesDto(rs);
	};
	
	@Override
	public boolean insert(LikesDto ldto) {
		String sql = "insert into likes values(?,?)";
		Object[] args = {
			ldto.getEmail(),
			ldto.getCompany()
		};
		return jdbcTemplate.update(sql, args)>0;
	}

	@Override
	public boolean delete(LikesDto ldto) {
		String sql = "delete from likes where email=? and company=?";
		Object[] args = {
				ldto.getEmail(),
				ldto.getCompany()
			};
		return jdbcTemplate.update(sql,args)>0;
	}
	
	@Override
	public List<LikesDto> searchList(String email) {
		String sql = "select * from likes where email=?";
		return jdbcTemplate.query(sql, mapper, email);
	}

	@Override
	public boolean isLiked(LikesDto ldto) {
		String sql = "select count(*) from likes where email=? and company=?";
		Object[] args = {
				ldto.getEmail(),
				ldto.getCompany()
			};
		return jdbcTemplate.queryForObject(sql,Integer.class, args)>0;
	}
	
}
