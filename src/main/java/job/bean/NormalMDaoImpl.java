package job.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class NormalMDaoImpl implements NormalMDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private RowMapper<NormalMDto> mapper = (rs, index)->{
		return new NormalMDto(rs);
	};
	
	private ResultSetExtractor<NormalMDto> extractor = (rs)->{
		if(rs.next()) return new NormalMDto(rs);
		else return null;
	};
	
	private ResultSetExtractor<Integer> extractorNumber = (rs)->{
		if(rs.next()) return rs.getInt(1);
		else return null;
	};
	@Override
	public boolean register(NormalMDto nmdto) {
		String sql = "insert into NormalM values(?,?,?,?,?,?,?,?,?,sysdate)";
		Object[] args= new Object[] {
				nmdto.getEmail(),
				nmdto.getName(),
				nmdto.getGender(),
				nmdto.getPassword(),
				nmdto.getPhone(),
				nmdto.getBirth(),
				nmdto.getPwQuiz(),
				nmdto.getPwAns(),
				nmdto.getGrade()
				};
			return jdbcTemplate.update(sql,args)>0;
	}
	@Override 
	public boolean edit(NormalMDto nmdto) {
		String sql = "update NormalM set password=?,phone=?,pwquiz=?,pwans=?,industry=?,company=?,career=?,edu=?,prize=?,resume=?,portfolio=?,certification=? where email=?";
		Object[] args = new Object[] {
			nmdto.getPassword(),
			nmdto.getPhone(),
			nmdto.getPwQuiz(),
			nmdto.getPwAns(),
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
	
	public boolean face(String savename, String email) {
		String sql = "update NormalM set face=? where email=?";
		
		return jdbcTemplate.update(sql, savename, email) > 0;
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
		String sql = "select password from NormalM where email=? and name=? and phone=? and pwquiz=? and pwans=?";
		Object[] args = new Object[] {
			nmdto.getEmail(),nmdto.getName(),nmdto.getPhone(),
			nmdto.getPwQuiz(),nmdto.getPwAns()	
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
	public boolean login(String email,String pw) {
		System.out.println(email+"/"+pw);
		String sql = "select count(*) from NormalM where email=? and password=?";
		return jdbcTemplate.queryForObject(sql, Integer.class, email, pw) > 0;
	}
	@Override
	public List<NormalMDto> adminList() {
		String sql = "select * from NormalM where admin='admin' order by email";
		return jdbcTemplate.query(sql, mapper);
	}
	@Override
	public Integer ChkSameId(String email) {
		String sql = "select count(*) from NormalM where email=?";
		return jdbcTemplate.query(sql,extractorNumber,email);
	}
	public boolean pwupdate(String password, String email) {
		String sql = "update NormalM set password =? where email=?";
		Object[] args= new Object[] {password,email};
		return jdbcTemplate.update(sql,args) > 0;
	}
	
	public boolean setGrade(String grade,String email)
	{
		String sql = "update NormalM set grade=? where email=?";
		Object[] args= new Object[] {grade,email};
		return jdbcTemplate.update(sql,args) > 0;
	} 
}
