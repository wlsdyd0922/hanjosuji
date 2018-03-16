package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class NormalMDto { 
	private String email;		//이메일
	private String name;		//이름
	private String gender;		//성별
	private String password;	//비번
	private String phone;		//전번
	private String birth;		//생일
	private String pwquiz;		//비번질문
	private String pwans;		//답변
	private String industry;	//분야
	private String company;		//기업
	private String career;		//경력
	private String edu;			//학력
	private String prize;		//수상경력
	private String resume;		//이력서
	private String portfolio;	//포트폴리오
	private String certification;//자격증
	private String admin;		//관리자여부
	private int reg;			//가입일
	private boolean rememberId;
	
	public NormalMDto(){
		super();
	}
	public NormalMDto(ResultSet rs) throws SQLException	{
		setEmail(rs.getString("email"));
		setName(rs.getString("name"));
		setGender(rs.getString("gender"));
		setPassword(rs.getString("password"));
		setPhone(rs.getString("phone"));
		setBirth(rs.getString("birth"));
		setPwQuiz(rs.getString("pwquiz"));
		setPwAns(rs.getString("pwans"));
		setIndustry(rs.getString("industry"));
		setCompany(rs.getString("company"));
		setCareer(rs.getString("career"));
		setEdu(rs.getString("edu"));
		setPrize(rs.getString("prize"));
		setResume(rs.getString("resume"));
		setPortfolio(rs.getString("portfolio"));
		setCertification(rs.getString("certificaation"));
		setAdmin(rs.getString("admin"));
		setReg(rs.getInt("reg"));
	}
	
	public NormalMDto(String email, String name, String gender, String password, String phone, String birth,
			String pwquiz, String pwans, String industry, String company, String career, String edu, String prize,
			String resume, String portfolio, String certification, String admin, int reg, boolean rememberId) {
		super();
		this.email = email;
		this.name = name;
		this.gender = gender;
		this.password = password;
		this.phone = phone;
		this.birth = birth;
		this.pwquiz = pwquiz;
		this.pwans = pwans;
		this.industry = industry;
		this.company = company;
		this.career = career;
		this.edu = edu;
		this.prize = prize;
		this.resume = resume;
		this.portfolio = portfolio;
		this.certification = certification;
		this.admin = admin;
		this.reg = reg;
		this.rememberId = rememberId;
	}
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPwQuiz() {
		return pwquiz;
	}
	public void setPwQuiz(String pwquiz) {
		this.pwquiz = pwquiz;
	}
	public String getPwAns() {
		return pwans;
	}
	public void setPwAns(String pwans) {
		this.pwans = pwans;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getEdu() {
		return edu;
	}
	public void setEdu(String edu) {
		this.edu = edu;
	}
	public String getPrize() {
		return prize;
	}
	public void setPrize(String prize) {
		this.prize = prize;
	}
	public String getResume() {
		return resume;
	}
	public void setResume(String resume) {
		this.resume = resume;
	}
	public String getPortfolio() {
		return portfolio;
	}
	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public int getReg() {
		return reg;
	}
	public void setReg(int reg) {
		this.reg = reg;
	}
	public boolean isRememberId() {
		return rememberId;
	}
	public void setRememberId(boolean rememberId) {
		this.rememberId = rememberId;
	}
}
