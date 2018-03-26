package job.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.BoardDto;
@Repository("boardDao")
public class BoardDaoImpl implements BoardDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private ResultSetExtractor<BoardDto> extractor = (rs)->{
		if(rs.next()) return new BoardDto(rs);
		else return null;
	};
	@Override
	public void insert(BoardDto bdto) {
		String sql = "insert into hireboard values(hireboard_seq.nextval,?,0,'채용중',?,?,?,?,?,?,sysdate)";
		Object[] args = {
			bdto.getTitle(),
			bdto.getEmployee(),
			bdto.getEmpltype(),
			bdto.getSalary(),
			bdto.getWorking(),
			bdto.getContents(),
			bdto.getCompany()
		};
		jdbcTemplate.update(sql, args);
	}
	//글 조회수 1 증가 메소드
	public void count(int no, String company) {
		String sql = "update hireboard set count=count+1 where no=? and company != ?";
		jdbcTemplate.update(sql, no, company);
	}
	private RowMapper<BoardDto> mapper = (rs, idx)->{
		return new BoardDto(rs);
	};
	//채용공고 전체 리스트
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
	
	public BoardDto searchTarget(int no) {
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
				bdto.getContents(),
				bdto.getCompany()
			};
			return jdbcTemplate.update(sql, args)>0;
	}
	@Override
	public boolean emplEnd(BoardDto bdto) {
		String sql = "update hireboard set state='종료' where company=?";
		return jdbcTemplate.update(sql, bdto.getCompany())>0;
	}
}