package job.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.CompanyDto;
@Repository("companyDao")
public class CompanyDaoImpl implements CompanyDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private ResultSetExtractor<CompanyDto> extractor = (rs)->{
		if(rs.next()) return new CompanyDto(rs);
		else return null;
	};
	private RowMapper<CompanyDto> mapper = (rs, idx)->{
		return new CompanyDto(rs);
	};
	 
	@Override
	public void insert(CompanyDto cdto) {
		String sql = "insert into company values(?,?,?,?,?,?,?,?,?,?,?,?,'0')";
		Object[] args = {
			cdto.getName(),
			cdto.getIndustry(),
			cdto.getCeo(),
			cdto.getBirth(),
			cdto.getWebsite(),
			cdto.getEmployee(),
			cdto.getType(),
			cdto.getSales(),
			cdto.getLocation(),
			cdto.getImgname(),
			cdto.getImgecnoding(),
			cdto.getRegcode()
		};
		jdbcTemplate.update(sql, args);
	}

	@Override
	public List<CompanyDto> getList() {
		String sql = "select * from company order by name asc";
		return jdbcTemplate.query(sql, mapper);
	}

	@Override
	public List<CompanyDto> searchList(String name) {
		String sql = "select * from company where name like '%'||?||'%' order by name";
		return jdbcTemplate.query(sql, mapper, name);
	}
	
	public CompanyDto searchTarget(String company)
	{
		String sql = "select * from hireboard where name=?";
		return jdbcTemplate.query(sql, extractor, company);
	}
	
	@Override
	public boolean delete(CompanyDto cdto) {
		String sql = "delete from company where name=?";
		return jdbcTemplate.update(sql,cdto.getName())>0;
	}

	@Override
	public boolean edit(CompanyDto cdto) {
		String sql = "update company set industry=?,ceo=?,"
				+ "birth=?,website=?,employee=?,type=?,sales=?,location=?"
				+ " where name=?";
		Object[] args = {
				cdto.getIndustry(),
				cdto.getCeo(),
				cdto.getBirth(),
				cdto.getWebsite(),
				cdto.getEmployee(),
				cdto.getType(),
				cdto.getSales(),
				cdto.getLocation(),
				cdto.getName()
			};
			return jdbcTemplate.update(sql, args)>0;
		}
	

	@Override
	public boolean image(CompanyDto cdto) {
		String sql = "update company set imgname=?,"
				+ "imgencoding=?"
				+ " where name=?";
		Object[] args = {
				cdto.getImgname(),
				cdto.getImgecnoding(),
				cdto.getName()
			};
			return jdbcTemplate.update(sql, args)>0;
	}

	@Override
	public boolean isCheck(CompanyDto cdto) {
		String sql = "update company set checked='1' where name=?";
		return jdbcTemplate.update(sql, cdto.getName())>0;
	}
}