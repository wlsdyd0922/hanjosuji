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
	private String reg;			//가입일
	private String face;		//프로필 이미지
	private String grade;		//등급
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
		setPwQuiz(rs.getString("pwquiz"));		//질문
	}
	
	public NormalMDto(String email, String name, String gender, String password, String phone, String birth,
			String pwquiz, String pwans, String industry, String company, String career, String edu, String prize,
			String resume, String portfolio, String certification, String grade, String face, String reg, boolean rememberId) {
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
		this.grade = grade;
		this.face = face;
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
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
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
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public boolean isRememberId() {
		return rememberId;
	}
	public void setRememberId(boolean rememberId) {
		this.rememberId = rememberId;
	}
}