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
	@Override
	//EMAIL	PASSWORD GENDER	BIRTH	CAREER	EDU	PRIZE	CERTIFICATE	PORTFOLIO	REG	PHONE	PWQUIZ	PWANS
	public void insert(NormalMDto nmdto) {
		System.out.println(nmdto.getEmail() + "/ "+nmdto.getPassword() + "/ "+nmdto.getGender() + "/ "+nmdto.getBirth() + "/ "+nmdto.getPhone() + "/ "+nmdto.getPwQuiz() + "/ "+nmdto.getPwAns() + "/ "+nmdto.getName());
		String sql = "insert into NormalM values(?,?,?,?,'-','-','-','-',sysdate,?,?,?,?,'-')";
		Object[] args= new Object[] {
				nmdto.getEmail(),nmdto.getPassword(),
				nmdto.getGender(),
				nmdto.getBirth()
				,nmdto.getPhone(),nmdto.getPwQuiz(),nmdto.getPwAns(),nmdto.getName()};
			jdbcTemplate.update(sql,args);
	}
	@Override
	public boolean edit(NormalMDto nmdto) {
		String sql = "update NormalM set password=?, birth=?, career=?, "
				+ "edu=?, prize=?, certificate=?,portfolio=?,phone=?,pwQuiz=?,"
				+ "pwAns=? where email=?";
		Object[] args = new Object[] {
			nmdto.getPassword(),nmdto.getBirth(),nmdto.getCareer(),nmdto.getEdu(),nmdto.getPrize(),
			nmdto.getCertificate(),nmdto.getPortfolio(),nmdto.getPhone(),nmdto.getPwQuiz(),nmdto.getPwAns(),
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
			nmdto.getPwQuiz(),nmdto.getPwAns()	
		};
		return jdbcTemplate.queryForObject(sql, args,String.class);
	}
	@Override
	public NormalMDto info(String email) {
		String sql = "select * from NormalM where=?";
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
		String sql = "select * from NormalM where email=? and password=?";
		return jdbcTemplate.query(sql, extractor, email, pw) != null;
	}@Override
	public List<NormalMDto> adminList() {
		String sql = "select * from NormalM where admin='admin' order by email";
		return jdbcTemplate.query(sql, mapper);
	}
}
