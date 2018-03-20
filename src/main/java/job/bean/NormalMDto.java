package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class NormalMDto { 
	private String email;
	private String name;
	private String gender;
	private String pw;
	private String phone;
	private String addr;
	private String addr2;
	private String reg;
	private String birth;
	private String pwquiz;
	private String pwans;
	private String grade;
	private String image;
	private String resume;
	private String company;
	private boolean rememberId;
	
	public NormalMDto(){
		super();
	}
	public NormalMDto(ResultSet rs) throws SQLException	{
		setEmail(rs.getString("email"));		//이메일
		setName(rs.getString("name"));			//이름
		setGender(rs.getString("gender"));		//성별
		setPhone(rs.getString("phone"));		//전화번호
		setBirth(rs.getString("birth"));		//생년월일
		setPwquiz(rs.getString("pwquiz"));		//질문
		setPwans(rs.getString("pwans"));
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPwquiz() {
		return pwquiz;
	}
	public void setPwquiz(String pwquiz) {
		this.pwquiz = pwquiz;
	}
	public String getPwans() {
		return pwans;
	}
	public void setPwans(String pwans) {
		this.pwans = pwans;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getResume() {
		return resume;
	}
	public void setResume(String resume) {
		this.resume = resume;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public boolean isRememberId() {
		return rememberId;
	}
	public void setRememberId(boolean rememberId) {
		this.rememberId = rememberId;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	
}