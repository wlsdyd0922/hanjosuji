package job.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.CompanyMDto;
@Repository("companyMDao")
public class CompanyMDaoImpl implements CompanyMDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private RowMapper<CompanyMDto> mapper = (rs, index)->{
		return new CompanyMDto(rs);
	};
	private ResultSetExtractor<CompanyMDto> extractor = (rs)->{
		if(rs.next()) return new CompanyMDto(rs);
		else return null;
	};
	//회원가입
	public void register(CompanyMDto cmdto) {
		String sql = "insert into CompanyM values(?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
		Object[] args= new Object[] {
				cmdto.getEmail(),
				cmdto.getPassword(),
				cmdto.getCompany(),
				cmdto.getCeo(),
				cmdto.getPhone(),
				cmdto.getPwquiz(),
				cmdto.getPwans(),
				cmdto.getBirth(),
				cmdto.getSales(),
				cmdto.getType(),
				cmdto.getLocation(),
				cmdto.getIndustry(),
				cmdto.getEmployee(),
				};
			jdbcTemplate.update(sql,args);
	}
	//로그인
	public boolean login(String email, String password) {
		String sql = "select * from CompanyM where email=? and pw=?";
		return jdbcTemplate.query(sql, extractor, email, password) != null;
	}
	//탈퇴
	public boolean exit(CompanyMDto cmdto) {
		String sql = "delete CompanyM where email=? and pw=?";
		return jdbcTemplate.update(sql,cmdto.getEmail(),cmdto.getPassword())>0;
	}
	//계정 찾기(회사이름과 번호로 찾기)
	public String findEmail(CompanyMDto cmdto) {
		String sql = "select email from CompanyM where company=? and ceo=? and phone=?";
		Object[] args = new Object[] {cmdto.getCompany(),cmdto.getCeo(),cmdto.getPhone()};
		return jdbcTemplate.queryForObject(sql,args,String.class);	
	}
	//회사이름,이메일,전화번호,비밀번호 질문,비밀번호 답변으로 찾기
	public String findPassword(CompanyMDto cmdto) {
		String sql = "select password from CompanyM where email=? and phone=? and company=? and ceo=? and pwquiz=? and pwans=?";
		Object[] args = new Object[] {
			cmdto.getEmail(),cmdto.getPhone(),cmdto.getCompany(),
			cmdto.getCeo(),cmdto.getPwquiz(),cmdto.getPwans()	
		};
		return jdbcTemplate.queryForObject(sql, args,String.class);
	}
	//회사 정보 수정
	public boolean edit(CompanyMDto cmdto) {
		String sql = "update CompanyM set password=?, company=?, ceo=?, phone=? "
				+ ", pwquiz=?, pwans=?, sales=?, type=?, location=?, employee "
				+ "where email=?";
		Object[] args = new Object[] {
			cmdto.getPassword(),cmdto.getCompany(),cmdto.getCeo(),cmdto.getPhone(),cmdto.getPwquiz(),
			cmdto.getPwans(),cmdto.getSales(),cmdto.getType(),cmdto.getLocation(),cmdto.getEmployee(),
			cmdto.getEmail()
		};
		return jdbcTemplate.update(sql, args) > 0;
	}
	//회사 정보 불러오기
	public CompanyMDto info(String email) {
		String sql = "select * from CompanyM where=?";
		return jdbcTemplate.query(sql,extractor,email);
	}
	public List<CompanyMDto> list(){
		String sql = "select * from CompanyM order by company";
		return jdbcTemplate.query(sql, mapper);
	}
	public boolean pwupdate(String password, String email) {
		String sql = "update CompanyM set password =? where email=?";
		Object[] args= new Object[] {password,email};
		return jdbcTemplate.update(sql,args) > 0;
	}
}