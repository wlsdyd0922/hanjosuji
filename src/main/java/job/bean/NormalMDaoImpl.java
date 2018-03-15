package job.bean;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

public class NormalMDaoImpl implements NormalMDao{
	private JdbcTemplate jdbcTemplate;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	private RowMapper<NormalMDto> mapper = (rs, index)->{
		return new NormalMDto(rs);
	};
	private ResultSetExtractor<NormalMDto> extractor = (rs)->{
		if(rs.next()) return new NormalMDto(rs);
		else return null;
	};
	@Override
	
	public void insert(NormalMDto nmdto) {
		String sql = "insert into NormalM values(?,?,?,?,?,?,?,?,'-','-','-','-','-','-','-',sysdate)";
		Object[] args= new Object[] {
				nmdto.getEmail(),
				nmdto.getName(),
				nmdto.getGender(),
				nmdto.getPassword(),
				nmdto.getPhone(),
				nmdto.getBirth(),
				nmdto.getPwquiz(),
				nmdto.getPwans(),
//				nmdto.getIndustry(),
//				nmdto.getCompany(),
//				nmdto.getCareer(),
//				nmdto.getEdu(),
//				nmdto.getPrize(),
//				nmdto.getResume(),
//				nmdto.getPortfolio(),
//				nmdto.getCertification(),
//				nmdto.getAdmin(),
				nmdto.getReg()
				};
			jdbcTemplate.update(sql,args);
	}
	@Override 
	public boolean edit(NormalMDto nmdto) {
		String sql = "update NormalM set password=?,phone=?,pwquiz=?,pwans=?,industry=?,company=?,career=?,edu=?,prize=?,resume=?,portfolio=?,certification=? where email=?";
		Object[] args = new Object[] {
			nmdto.getPassword(),
			nmdto.getPhone(),
			nmdto.getPwquiz(),
			nmdto.getPwans(),
			nmdto.getIndustry(),
			nmdto.getCompany(),
			nmdto.getCareer(),
			nmdto.getEdu(),
			nmdto.getPrize(),
			nmdto.getResume(),
			nmdto.getPortfolio(),
			nmdto.getCertification(),
			nmdto.getEmail()
		};
		return jdbcTemplate.update(sql, args) > 0;
	}
	@Override
	public boolean drop(NormalMDto nmdto) {
		String sql = "delete NormalM where email=? and password=?";
		return jdbcTemplate.update(sql,nmdto.getEmail(),nmdto.getPassword())>0;
	}
	@Override
	public String getEmail(NormalMDto nmdto) {
		String sql = "select email from NormalM where name=? and phone=?";
		Object[] args = new Object[] {nmdto.getName(),nmdto.getPhone()};
		return jdbcTemplate.queryForObject(sql,args,String.class);	
	}
	@Override
	public String getPw(NormalMDto nmdto) {
		String sql = "select password from NormalM where email=? and phone=? and pwquiz=? and pwans=?";
		Object[] args = new Object[] {
			nmdto.getEmail(),nmdto.getPhone(),
			nmdto.getPwquiz(),nmdto.getPwans()	
		};
		return jdbcTemplate.queryForObject(sql, args,String.class);
	}
	@Override
	public NormalMDto info(String email) {
		String sql = "select * from NormalM where email=?";
		return jdbcTemplate.query(sql,extractor,email);
	}
	@Override
	public List<NormalMDto> list() {
		String sql = "select * from NormalM where admin!='admin'order by email";
		return jdbcTemplate.query(sql, mapper);
	}
	@Override
	public boolean login(String email, String password) {
		String sql = "select * from NormalM where email=? and password=?";
		return jdbcTemplate.query(sql, extractor, email, password) != null;
	}@Override
	public List<NormalMDto> adminList() {
		String sql = "select * from NormalM where admin='admin' order by email";
		return jdbcTemplate.query(sql, mapper);
	}
	
}
