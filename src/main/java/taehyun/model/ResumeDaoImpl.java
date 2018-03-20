package taehyun.model;

import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.NormalMDto;
import taehyun.bean.ResumeDto;

@Repository("resumeDao")
public class ResumeDaoImpl implements ResumeDao{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
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

	@Override
	public boolean delete(ResumeDto rdto) {
		String sql = "delete from resume where email=? and title=?";
		return jdbcTemplate.update(sql,rdto.getEmail())>0;
	}
	@Override
	public boolean edit(ResumeDto rdto) {
		String sql = "update resume set title=?,career=?,edu=?,"
				+ "salary=?,pr=?,portfolio=?,certi=?,prize=?,email=?,face=?"
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
				rdto.getEmail(),
				rdto.getFace(),
				rdto.getEmail()
			};
			return jdbcTemplate.update(sql, args)>0;
		}
}





