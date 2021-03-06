package job.model;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.NormalMDto;


@Repository("normalMdao")
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
	private ResultSetExtractor<NormalMDto> exLonIn = (rs)->{
		if(rs.next()) return new NormalMDto(rs);
		else return null;
	};
	private ResultSetExtractor<String> exImgName = (rs)->{
		if(rs.next()) return rs.getString(1);
		else return null;
	};
	
	private ResultSetExtractor<Integer> extractorNumber = (rs)->{
		if(rs.next()) return rs.getInt(1);
		else return null;
	};
	@Override
	public boolean register(NormalMDto nmdto) {
		String sql = "insert into NormalM values(?,?,?,?,?,?,?,sysdate,?,?,?,?,?,?,?)";
		Object[] args= new Object[] {
				nmdto.getEmail(),
				nmdto.getName(),
				nmdto.getGender(),
				nmdto.getPw(),
				nmdto.getPhone(),
				nmdto.getAddr(),
				nmdto.getAddr2(),
				nmdto.getBirth(),
				nmdto.getPwquiz(),
				nmdto.getPwans(),
				nmdto.getGrade(),
				nmdto.getCompany(),
				nmdto.getImgname(),
				nmdto.getImgencoding()
				};
			return jdbcTemplate.update(sql,args)>0;
	}
	@Override 
	public boolean edit(NormalMDto nmdto) {
		System.out.println(nmdto.getPw());
		if(nmdto.getPw().equals("")) {
			String sql = "update NormalM set phone=?,addr=?,addr2=?,pwquiz=? where email=?";
			Object[] args = new Object[] {
				nmdto.getPhone(),
				nmdto.getAddr(),
				nmdto.getAddr2(),
				nmdto.getPwquiz(),
				nmdto.getEmail()
			};
			return jdbcTemplate.update(sql, args) > 0;
		}else {
			String sql = "update NormalM set pw=?,phone=?,addr=?,addr2=?,pwquiz=? where email=?";
			Object[] args = new Object[] {
					nmdto.getPw(),
					nmdto.getPhone(),
					nmdto.getAddr(),
					nmdto.getAddr2(),
					nmdto.getPwquiz(),
					nmdto.getEmail()
			};
			return jdbcTemplate.update(sql, args) > 0;
		}
		
	}
	
	public boolean face(String savename, String email) {
		String sql = "update NormalM set image=? where email=?";
		
		return jdbcTemplate.update(sql, savename, email) > 0;
	}
	
	@Override
	public String getEmail(NormalMDto nmdto) {
		String sql = null;
		Object[] args = null;
		if(nmdto.getCompany()==null) {
			sql = "select email from NormalM where name=? and phone=?";
			args = new Object[] {nmdto.getName(),nmdto.getPhone()};
		}else {
			sql = "select email from NormalM where name=? and phone=? and company=?";
			args = new Object[] {nmdto.getName(),nmdto.getPhone(),nmdto.getCompany()};
		}
		return jdbcTemplate.queryForObject(sql,args,String.class);	
	}
	@Override
	public String getPw(NormalMDto nmdto) {
		String sql = "select pw from NormalM where email=? and name=? and phone=? and pwquiz=? and pwans=?";
		Object[] args = new Object[] {
			nmdto.getEmail(),nmdto.getName(),nmdto.getPhone(),
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
	public boolean login(String email,String pw) {
		String sql = "select count(*) from NormalM where email=? and pw=?";
		return jdbcTemplate.queryForObject(sql, Integer.class, email, pw) > 0;
	}
	@Override
	public List<NormalMDto> adminList() {
		String sql = "select * from NormalM where admin='관리자' order by email";
		return jdbcTemplate.query(sql, mapper);
	}
	@Override
	public int Chkaccount(NormalMDto nmdto) {
		String sql = null;
		Object[] args = null;
		if(nmdto.getCompany()==null) {
			sql = "select count(*) from NormalM where email=? and name=? and phone=? and pwquiz=? and pwans=?";
			args = new Object[] {
					nmdto.getEmail(),
					nmdto.getName(),
					nmdto.getPhone(),
					nmdto.getPwquiz(),
					nmdto.getPwans()
					};
		}else {
			sql = "select count(*) from NormalM where email=? and name=? and phone=? and pwquiz=? and pwans=? and company=?";
			args = new Object[] {
					nmdto.getEmail(),
					nmdto.getName(),
					nmdto.getPhone(),
					nmdto.getPwquiz(),
					nmdto.getPwans(),
					nmdto.getCompany()
					};
		}
		
		return jdbcTemplate.queryForObject(sql,args,Integer.class);
	}
	
	@Override
	public Integer ChkSameId(String email) {
		String sql = "select count(*) from NormalM where email=?";
		return jdbcTemplate.query(sql,extractorNumber,email);
	}
	
	public boolean pwupdate(String password, String email) {
		String sql = "update NormalM set pw =? where email=?";
		Object[] args= new Object[] {password,email};
		return jdbcTemplate.update(sql,args) > 0;
	}
	
	public boolean setGrade(String grade,String email){
		String sql = "update NormalM set grade=? where email=?";
		Object[] args= new Object[] {grade,email};
		return jdbcTemplate.update(sql,args) > 0;
	}
	
	public boolean setImg(String savename, String enctype, String email) {
		String sql = "update NormalM set imgname=?,imgencoding=? where email=?";
		return jdbcTemplate.update(sql,savename,enctype,email)>0;
	}
	public String deleteImg(String email) {
		String sql = "select imgname from normalm where email=?";
		String imgname =  jdbcTemplate.query(sql, exImgName,email);
		setImg("", "", email);
		return imgname;
	}
	public boolean setCompany(String company,String email) {
		String sql = "update NormalM set company=? where email=?";
		return jdbcTemplate.update(sql,company,email)>0;
	}
	@Override
	public String getCompany(String email) {
		String sql = "select company from NormalM where email=?";
		Object[] args = new Object[] {email};
		return jdbcTemplate.queryForObject(sql,args,String.class);	
	}
	@Override
	public boolean member_delete(String email, String pw) {
		String sql = "delete from normalm where email =? and pw = ?";
		Object[] args = new Object[] {email,pw};
//		System.out.println(jdbcTemplate.update(sql,args) > 0);
		return jdbcTemplate.update(sql,args) > 0;
	}
	
	
}
