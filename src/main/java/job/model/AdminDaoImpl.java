package job.model;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.CompanyDto;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private RowMapper<CompanyDto> compmapper = (rs, idx)->{
		return new CompanyDto(rs);
	};

	@Override
	public List<CompanyDto> CompList() {
		String sql = "select * from (select * from (select rownum rn,A.* from (select * from company order by no)A)) where rn between 1 and 5";
		return jdbcTemplate.query(sql, compmapper);
	}
}
