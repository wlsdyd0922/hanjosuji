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
		String sql = "insert into hireboard values(hireboard_seq.nextval,?,0,'채용중',?,?,?,?,?,?,?,sysdate)";
		Object[] args = {
			bdto.getTitle(),
			bdto.getEmployee(),
			bdto.getCareer(),
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
	public List<BoardDto> searchList(String company,String location,String industry, String type, String career,String empltype) {
	//company:키워드검색,location:위치, industry:직군, type:대기업/중소기업, career:신입경력
		// empltype: 고용형태
String sql = "select * from company a full outer join hireboard b"
		+ " on a.name=b.company where upper(a.name) like '%'||upper(?)||'%'"
		+ " and a.location like '%'||?||'%' and a.industry like '%'||?||'%'"
		+ " and a.type like '%'||?||'%' and b.career like '%'||?||'%' and"
		+ " b.empltype like '%'||?||'%'";
//		String sql = "select * from hireboard where upper(company) like '%'||upper(?)||'%' order by reg desc";
		return jdbcTemplate.query(sql, mapper, company,location,industry,type,career,empltype);
	}

	@Override
	public boolean emplEnd(BoardDto bdto) {
		String sql = "update hireboard set state='종료' where company=?";
		return jdbcTemplate.update(sql, bdto.getCompany())>0;
	}
	@Override
	public boolean edit(BoardDto bdto) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
	
}