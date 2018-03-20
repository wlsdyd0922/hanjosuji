package taehyun.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import taehyun.bean.ResumeDto;
import taehyun.bean.companyDto;

public class CompanyDaoImpl implements CompanyDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private RowMapper<companyDto> mapper = (rs, idx)->{
		return new companyDto(rs);
	};
	
	@Override
	public void insert(companyDto cdto) {
		String sql = "insert into company values(?,?,?,?,?,?,?,?,?,?,?)";
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
			cdto.getImgecnoding()
		};
		jdbcTemplate.update(sql, args);
	}

	@Override
	public List<companyDto> getList() {
		String sql = "select * from company order by name asc";
		return jdbcTemplate.query(sql, mapper);
	}

	@Override
	public List<companyDto> searchList(String name) {
		String sql = "select * from company";
		return jdbcTemplate.query(sql, mapper, name);
	}

	@Override
	public boolean delete(companyDto cdto) {
		String sql = "delete from company where name=?";
		return jdbcTemplate.update(sql,cdto.getName())>0;
	}

	@Override
	public boolean edit(companyDto cdto) {
		String sql = "update resume set title=?,career=?,edu=?,"
				+ "salary=?,pr=?,portfolio=?,certi=?,prize=?,face=?"
				+ " where email=?";
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
				cdto.getImgecnoding()
			};
			return jdbcTemplate.update(sql, args)>0;
		}
}
