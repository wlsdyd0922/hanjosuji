package job.model;

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
		return jdbcTemplate.update(sql,ldto.getEmail(),ldto.getCompany())>0;
	}
	
}
