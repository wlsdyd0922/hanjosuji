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
	public void insert(ResumeDto rdto) {
		String sql = "insert into resume values(?,0,?,?,?,?,?,?,?,?,?,?,?,?,?,?,null)";
		Object[] args = {
			rdto.getTitle(),
			rdto.getFavdivision(),
			rdto.getFavregion(),
			rdto.getWorkingstatus(),
			rdto.getCareer(),
			rdto.getEdu(),
			rdto.getSalary(),
			rdto.getPr1(),
			rdto.getPr2(),
			rdto.getPr3(),
			rdto.getPr4(),
			rdto.getPortfolio(),
			rdto.getCerti(),
			rdto.getPrize(),
			rdto.getEmail()
		};
		jdbcTemplate.update(sql, args);
	}

	private RowMapper<ResumeDto> mapper = (rs, idx) -> {
		return new ResumeDto(rs);
	};

	@Override
	public List<ResumeDto> getList(String author) {
		String sql = "select * from resume order by title asc";
		return jdbcTemplate.query(sql, mapper, author);
	}
	public ResumeDto searchTarget(String author)
	{
		String sql = "select * from resume where email=?";
		return jdbcTemplate.query(sql, extractor, author);
	}

	@Override
	public boolean delete(ResumeDto rdto) {
		String sql = "delete from resume where email=? and title=?";
		return jdbcTemplate.update(sql, rdto.getEmail(), rdto.getTitle()) > 0;
	}
	@Override
	public boolean edit(ResumeDto rdto) {
		if(rdto.getPr1()!=null) {
			System.out.println(1);
		String sql = "update resume set "
				+ "pr1=?,"
				+ "pr2=?,"
				+ "pr3=?,"
				+ "pr4=?"
				+ " where email=?";
		Object[] args = {
				rdto.getPr1(),
				rdto.getPr2(),
				rdto.getPr3(),
				rdto.getPr4(),
				rdto.getEmail()
			};
			return jdbcTemplate.update(sql, args)>0;
		}
		else if(rdto.getCareer()!=null) {
			System.out.println(2);
			String sql = "update resume set "
					+ "title=?,"
					+ "favdivision=?,"
					+ "favregion=?,"
					+ "workingstatus=?,"
					+ "career=?,"
					+ "edu=?,"
					+ "salary=?,"
					+ "portfolio=?,"
					+ "certi=?,"
					+ "prize=?"
					+ " where email=?";
			Object[] args = {
					rdto.getTitle(),
					rdto.getFavdivision(),
					rdto.getFavregion(),
					rdto.getWorkingstatus(),
					rdto.getCareer(),
					rdto.getEdu(),
					rdto.getSalary(),
					rdto.getPortfolio(),
					rdto.getCerti(),
					rdto.getPrize(),
					rdto.getEmail()
				};
				return jdbcTemplate.update(sql, args)>0;
			}else
			{
				System.out.println(3);
				String sql = "update resume set "
						+ "favdivision=?,"
						+ "favregion=?,"
						+ "workingstatus=?,"
						+ "edu=?,"
						+ "portfolio=?,"
						+ "certi=?,"
						+ "prize=?"
						+ " where email=?";
				Object[] args = {
						rdto.getFavdivision(),
						rdto.getFavregion(),
						rdto.getWorkingstatus(),
						rdto.getEdu(),
						rdto.getPortfolio(),
						rdto.getCerti(),
						rdto.getPrize(),
						rdto.getEmail()
					};
					return jdbcTemplate.update(sql, args)>0;
				}
		}
		
	@Override
	public boolean connResume(String email, String title) {
		String sql = "update resume set email=? where title=?";
		return jdbcTemplate.update(sql, email, title) > 0;
	}

	@Override
	public boolean connBoard(int boardno, String email) {
		String sql = "update resume set boardno=? where email=?";
		return jdbcTemplate.update(sql, boardno, email)>0;
	}
	@Override
	public boolean increaseView(ResumeDto rdto) {
		String sql = "UPDATE resume SET COUNT = (SELECT nvl(COUNT, 0) + 1 FROM resume WHERE email= ?) WHERE email=?";
		return jdbcTemplate.update(sql, rdto.getEmail(), rdto.getEmail())>0;
	}
}