package job.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.ResumeDto;

@Repository("resumeDao")
public class ResumeDaoImpl implements ResumeDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private ResultSetExtractor<ResumeDto> extractor = (rs) -> {
		if (rs.next())
			return new ResumeDto(rs);
		else
			return null;
	};

	@Override
	public boolean insert(ResumeDto rdto) {
		if (rdto.getPrize() != null) {
			String sql = "insert into resume values('',0,?,?,?,'',?,'','',?,?,?,?,resume_seq.nextVal)";
			Object[] args = { rdto.getFavDivision(), rdto.getFavRegion(), rdto.getWorkingstatus(), rdto.getEdu(),
					rdto.getPortfolio(), rdto.getCerti(), rdto.getPrize(), rdto.getEmail() };
			return jdbcTemplate.update(sql, args) > 0;
		} else if (rdto.getCareer() != null) {
			String sql = "insert into resume values('',0,'','','',?,?,'','','',?,'',?,resume_seq.nextVal)";
			Object[] args = { rdto.getCareer(), rdto.getEdu(), rdto.getCerti(), rdto.getEmail() };
			return jdbcTemplate.update(sql, args) > 0;
		}

		return false;

	}

	private RowMapper<ResumeDto> mapper = (rs, idx) -> {
		return new ResumeDto(rs);
	};

	@Override
	public List<ResumeDto> getList(String author) {
		String sql = "select * from resume order by title asc";
		return jdbcTemplate.query(sql, mapper, author);
	}

	public ResumeDto searchTarget(String email) {
		String sql = "select * from resume where email=?";
		return jdbcTemplate.query(sql, extractor, email);
	}

	@Override
	public boolean delete(ResumeDto rdto) {
		String sql = "delete from resume where email=? and title=?";
		return jdbcTemplate.update(sql, rdto.getEmail(), rdto.getTitle()) > 0;
	}

	@Override
	public boolean edit(ResumeDto rdto) {
		if (rdto.getPrize() != null) {
			String sql = "update resume set favdivision=?,favregion=?,workingstatus=?,edu=?,portfolio=?,certi=?,prize=? where email=?";
			Object[] args = { rdto.getFavDivision(), rdto.getFavRegion(), rdto.getWorkingstatus(), rdto.getEdu(),
					rdto.getPortfolio(), rdto.getCerti(), rdto.getPrize(), rdto.getEmail() };
			return jdbcTemplate.update(sql, args) > 0;
		} else if (rdto.getCareer() != null) {
			String sql = "update resume set career=?,edu=?,certi=? where email=?";
			Object[] args = { rdto.getCareer(), rdto.getEdu(), rdto.getCerti(), rdto.getEmail() };
			return jdbcTemplate.update(sql, args) > 0;
		}
		return false;
	}

	@Override
	public boolean connResume(String email, String title) {
		String sql = "update resume set email=? where title=?";
		return jdbcTemplate.update(sql, email, title) > 0;
	}

	@Override
	public boolean connBoard(int boardno, int resumeno) {
		String sql = "update resume set boardno=? where no=?";
		return jdbcTemplate.update(sql, boardno, resumeno) > 0;
	}
}