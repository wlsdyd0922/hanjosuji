package taehyun.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import taehyun.bean.boardDto;

public class boardDaoImpl implements boardDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Override
	public void insert(boardDto bdto) {
		String sql = "insert into resume values(?,?,?,?,?,sysdate)";
		Object[] args = {
			bdto.getNo(),
			bdto.getCount(),
			bdto.getTitle(),
			bdto.getSalary(),
			bdto.getWorking(),
			bdto.getCompany(),
			bdto.getReg()
		};
		jdbcTemplate.update(sql, args);
	}
	private RowMapper<boardDto> mapper = (rs, idx)->{
		return new boardDto(rs);
	};
	@Override
	public List<boardDto> getList() {
		String sql = "select * from hireboard order by reg desc";
		return jdbcTemplate.query(sql, mapper);
	}

	@Override
	public boolean delete(boardDto bdto) {
		String sql = "delete from hireboard where no=?";
		return jdbcTemplate.update(sql,bdto.getNo())>0;
	}

	@Override
	public List<boardDto> searchList(String company) {
		String sql = "select * from hireboard where company=? order by reg desc";
		return jdbcTemplate.query(sql, mapper, company);
	}
}
