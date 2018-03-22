package job.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.ResumeDto;

@Repository("resumeDao")
public class ResumeDaoImpl implements ResumeDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private ResultSetExtractor<ResumeDto> extractor = (rs)->{
		if(rs.next()) return new ResumeDto(rs);
		else return null;
	};
	
	@Override
	public void insert(ResumeDto rdto) {
		String sql = "insert into resume values(?,?,?,?,?,?,?,?,?,?,?)";
		Object[] args = {
			rdto.getTitle(),
			rdto.getCareer(),
			rdto.getEdu(),
			rdto.getSalary(),
			rdto.getPr(),
			rdto.getPortfolio(),
			rdto.getCerti(),
			rdto.getPrize(),
			rdto.getEmail(),
			rdto.getBoardno(),
			rdto.getFace()
		};
		jdbcTemplate.update(sql, args);
	}

	private RowMapper<ResumeDto> mapper = (rs, idx)->{
		return new ResumeDto(rs);
	};
	
	@Override
	public List<ResumeDto> getList(String author) {
		String sql = "select * from resume order by title asc";
		return jdbcTemplate.query(sql, mapper, author);
	}
	public ResumeDto searchTarget(String author)
	{
		String sql = "select * from resume where author=?";
		return jdbcTemplate.query(sql, extractor, author);
	}
	@Override
	public boolean delete(ResumeDto rdto) {
		String sql = "delete from resume where email=? and title=?";
		return jdbcTemplate.update(sql,rdto.getEmail(),rdto.getTitle())>0;
	}
	@Override
	public boolean edit(ResumeDto rdto) {
		String sql = "update resume set title=?,career=?,edu=?,"
				+ "salary=?,pr=?,portfolio=?,certi=?,prize=?,face=?"
				+ " where email=?";
		Object[] args = {
				rdto.getTitle(),
				rdto.getCareer(),
				rdto.getEdu(),
				rdto.getSalary(),
				rdto.getPr(),
				rdto.getPortfolio(),
				rdto.getCerti(),
				rdto.getPrize(),
				rdto.getFace(),
				rdto.getEmail()
			};
			return jdbcTemplate.update(sql, args)>0;
		}

	@Override
	public boolean connResume(String email,String title) {
		String sql = "update resume set email=? where title=?";
		return jdbcTemplate.update(sql, email, title)>0;
	}
}