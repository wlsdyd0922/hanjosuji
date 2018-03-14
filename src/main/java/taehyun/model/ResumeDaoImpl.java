package taehyun.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import taehyun.bean.ResumeDto;

@Repository("resumeDao")
public class ResumeDaoImpl implements ResumeDao{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public void insert(ResumeDto idto) {
		String sql = "insert into resume values(?, ?, ?, ?, ?, sysdate,?)";
		Object[] args = {
			idto.getSavename(), idto.getFilename(),
			idto.getFiletype(), idto.getFilelen(), idto.getAuthor()
		};
		jdbcTemplate.update(sql, args);
	}

	private RowMapper<ResumeDto> mapper = (rs, idx)->{
		return new ResumeDto(rs);
	};
	
	@Override
	public List<ResumeDto> getList() {
		String sql = "select * from resume order by reg desc";
		return jdbcTemplate.query(sql, mapper);
	}
}





