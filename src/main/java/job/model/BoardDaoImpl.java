package job.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.BoardDto;
import job.bean.CompanyDto;
import job.manager.BoardSqlCreater;

@Repository("boardDao")
public class BoardDaoImpl implements BoardDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private Logger log = LoggerFactory.getLogger(getClass());

	private ResultSetExtractor<BoardDto> extractor = (rs) -> {
		if (rs.next())
			return new BoardDto(rs);
		else
			return null;
	};
	private ResultSetExtractor<CompanyDto> extractor2 = (rs) -> {
		if (rs.next())
			return new CompanyDto(rs);
		else
			return null;
	};

	@Override
	public void insert(BoardDto bdto) {
		String sql = "insert into hireboard values(hireboard_seq.nextval,?,0,'채용중',?,?,?,?,?,?,?,sysdate,?,?,?)";
		Object[] args = { bdto.getTitle(), bdto.getEmployee(), bdto.getCareer(), bdto.getEmpltype(), bdto.getSalary(),
				bdto.getWorking(), bdto.getContents(), bdto.getCompany(), bdto.getDepartment(), bdto.getEdu(),
				bdto.getLocation() };
		jdbcTemplate.update(sql, args);
	}

	// 글 조회수 1 증가 메소드
	public void count(int no, String company) {
		String sql = "update hireboard set count=count+1 where no=? and company != ?";
		jdbcTemplate.update(sql, no, company);
	}

	private RowMapper<BoardDto> mapper = (rs, idx) -> {
		return new BoardDto(rs);
	};

	// 채용공고 전체 리스트
	@Override
	public List<BoardDto> getList(int start, int end) {
		String sql = "select * from (select rownum rn,A.* from (select * from hireboard order by reg desc)A) where rn between ? and ?";
		return jdbcTemplate.query(sql, mapper, start, end);
	}

	@Override
	public int getCount(String company, String location, String industry, String type, String career, String empltype,
			String level_of_education) {
		boolean compF = company != null && !company.equals("");
		boolean locF = location != null && !location.equals("");
		boolean industryF = industry != null && !industry.equals("");
		boolean typeF = type != null && !type.equals("");
		boolean careerF = career != null && !career.equals("");
		boolean empltypeF = empltype != null && !empltype.equals("");
		boolean eduF = level_of_education != null && !level_of_education.equals("");
		
		BoardSqlCreater bsc = new BoardSqlCreater();
		String sql = bsc.sqlCreate(company, location, industry, type, career, empltype, level_of_education);
		sql = "select count(*) from (" + sql+")";
		if (!compF && !locF && !industryF && !typeF && !careerF && !empltypeF && !eduF) {
			return jdbcTemplate.queryForObject(sql, Integer.class);
		} else {
			List<String> list = bsc.createOb(company, location, industry, type, career, empltype, level_of_education);
			return jdbcTemplate.queryForObject(sql, Integer.class, list.toArray());
		}
		// ,company, location, industry, type, career, empltype
	}

	@Override
	public boolean delete(BoardDto bdto) {
		String sql = "delete from hireboard where no=?";
		return jdbcTemplate.update(sql, bdto.getNo()) > 0;
	}

	@Override
	public List<BoardDto> searchList(String company, String location, String industry, String type, String career,
			String empltype, String level_of_education, int start, int end) {
		boolean compF = company != null && !company.equals("");
		boolean locF = location != null && !location.equals("");
		boolean industryF = industry != null && !industry.equals("");
		boolean typeF = type != null && !type.equals("");
		boolean careerF = career != null && !career.equals("");
		boolean empltypeF = empltype != null && !empltype.equals("");
		boolean eduF = level_of_education != null && !level_of_education.equals("");

		BoardSqlCreater bsc = new BoardSqlCreater();
		String sql = bsc.sqlCreate(company, location, industry, type, career, empltype, level_of_education);
		sql = "select * from (select rownum rn,A* from ("+sql+")A) where rn between ? and ?";
		log.debug(sql);
//		select * from (
//				select rownum rn,A.* from (
//				select b.no, a.name, a.industry, a.ceo, a.birth, a.website, a.employee, a.type, a.sales, a.addrloc, a.addr2loc, a.imgname, a.imgencoding, a.regcode from company a full outer join hireboard b on a.name=b.company 
//				)A) where rn between 10 and 15

		if (!compF && !locF && !industryF && !typeF && !careerF && !empltypeF && !eduF) {
			return jdbcTemplate.query(sql, mapper,start,end);
		} else {
			List<String> list = bsc.createOb(company, location, industry, type, career, empltype, level_of_education);
			return jdbcTemplate.query(sql, mapper, list.toArray(),start,end);
		}

		// company:키워드검색,location:위치, industry:직군, type:대기업/중소기업, career:신입경력
		// empltype: 고용형태
		// String sql = "select b.*, a.name, a.industry, a.ceo, a.birth, a.website,
		// a.employee,"
		// + " a.type, a.sales, a.addrloc, a.addr2loc, a.imgname, a.imgencoding,
		// a.regcode "
		// + "from company a full outer join hireboard b on a.name=b.company "
		// + "where upper(b.title) like '%'||upper(?)||'%' or b.location = ? "
		// + " and a.industry like '%'||?||'%' and a.type like '%'||?||'%' and"
		// + " b.career like '%'||?||'%' and b.empltype like '%'||?||'%'";
		// String sql = "select * from hireboard where upper(company) like
		// '%'||upper(?)||'%' order by reg desc";
	}

	@Override
	public boolean emplEnd(BoardDto bdto) {
		String sql = "update hireboard set state='종료' where company=?";
		return jdbcTemplate.update(sql, bdto.getCompany()) > 0;
	}

	@Override
	public boolean edit(BoardDto bdto) {
		// TODO Auto-generated method stub
		return false;
	}

	// 게시판 번호로 게시판 테이블 조회
	@Override
	public BoardDto info(int no) {
		String sql = "select * from hireboard where no = ?";
		return jdbcTemplate.query(sql, extractor, no);
	}

	// 게시판 번호로 회사테이블+게시판테이블 조인해서 회사정보 조회
	@Override
	public CompanyDto info2(int no) {
		String sql = "select * from company a full outer join hireboard b on a.name = b.company " + "where b.no = ?";
		return jdbcTemplate.query(sql, extractor2, no);
	}

	// 회사 이름으로 테이블 정보 조회
	@Override
	public BoardDto info3(String company) {
		String sql = "select * from hireboard where company = ?";
		return jdbcTemplate.query(sql, extractor, company);
	}

	// 회사이름 + 해당 글번호 제외하고 조회
	@Override
	public List<BoardDto> otherList(String company, int no) {
		String sql = "select * from hireboard where company = ? and no != ?";
		return jdbcTemplate.query(sql, mapper, company, no);
	}

	// 회사이름으로 모든 데이터 가져오기
	@Override
	public List<BoardDto> searchNo(String company) {
		String sql = "select * from hireboard where company = ?";
		return jdbcTemplate.query(sql, mapper, company);
	}

}