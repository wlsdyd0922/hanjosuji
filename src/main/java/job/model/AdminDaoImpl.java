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

	private RowMapper<CompanyDto> compmapper = (rs, idx) -> {
		return new CompanyDto(rs);
	};

	@Override
	public List<CompanyDto> compChkList(int chk, int sno, int eno) {
		String sql = "select * from (select * from (select rownum rn,A.* from (select * from company where checked=? order by no)A)) where rn between ? and ?";
		return jdbcTemplate.query(sql, compmapper, chk, sno, eno);
	}

	@Override
	public List<CompanyDto> compAllList(int sno, int eno) {
		String sql = "select * from (select * from (select rownum rn,A.* from (select * from company order by no)A)) where rn between ? and ?";
		return jdbcTemplate.query(sql, compmapper, sno, eno);
	}


	@Override
	public int getCount(int type) {
		if (type == 2) {
			String sql = "select count(*) from company";
			return jdbcTemplate.queryForObject(sql, Integer.class);
		} else {
			String sql = "select count(*) from company where checked=?";
			return jdbcTemplate.queryForObject(sql, Integer.class, type);
		}
	}
	
	@Override
	public boolean compDelete(int no) {
		String sql = "delete company where no=?";
		return jdbcTemplate.update(sql,no)>0;
	}

	@Override
	public boolean compAccept(int no) {
		String sql = "update company set checked=1 where no=?";
		return jdbcTemplate.update(sql,no)>0;
	}
}
