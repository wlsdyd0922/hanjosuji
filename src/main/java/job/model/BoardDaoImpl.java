package job.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import job.bean.BoardDto;

public class BoardDaoImpl implements BoardDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private ResultSetExtractor<BoardDto> extractor = (rs)->{
		if(rs.next()) return new BoardDto(rs);
		else return null;
	};
	@Override
	public void insert(BoardDto bdto) {
		String sql = "insert into resume values(?,?,?,?,?,?,?,sysdate)";
		Object[] args = {
			bdto.getNo(),
			bdto.getCount(),
			bdto.getTitle(),
			bdto.getSalary(),
			bdto.getWorking(),
			bdto.getContesnts(),
			bdto.getCompany()
		};
		jdbcTemplate.update(sql, args);
	}
	private RowMapper<BoardDto> mapper = (rs, idx)->{
		return new BoardDto(rs);
	};
	@Override
	public List<BoardDto> getList() {
		String sql = "select * from hireboard order by reg desc";
		return jdbcTemplate.query(sql, mapper);
	}

	@Override
	public boolean delete(BoardDto bdto) {
		String sql = "delete from hireboard where no=?";
		return jdbcTemplate.update(sql,bdto.getNo())>0;
	}

	@Override
	public List<BoardDto> searchList(String company) {
		String sql = "select * from hireboard where company like '%'||?||'%' order by reg desc";
		return jdbcTemplate.query(sql, mapper, company);
	}
	
	public BoardDto searchTarget(int no)
	{
		String sql = "select * from hireboard where no=?";
		return jdbcTemplate.query(sql, extractor, no);
	}
	
	@Override
	public boolean edit(BoardDto bdto) {
		String sql = "update hireboard set count=?,title=?,"
				+ "salary=?,working=?,contents=?"
				+ " where company=?";
		Object[] args = {
				bdto.getCount(),
				bdto.getTitle(),
				bdto.getSalary(),
				bdto.getWorking(),
				bdto.getContesnts(),
				bdto.getCompany()
			};
			return jdbcTemplate.update(sql, args)>0;
	}
}