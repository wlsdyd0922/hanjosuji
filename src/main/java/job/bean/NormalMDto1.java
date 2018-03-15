package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class NormalMDto1 {
	private String email;		
	private String password;
	private String gender;
	private String birth;
	private String career;			//경력
	private String edu;				//학력
	private String prize;			//수상경력
	private String certificate;		//자격증
	private String portfolio;		//포트폴리오 파일명
	private String reg;
	private String phone;
	private String pwQuiz;
	private String pwAns;
	private String name;
	
	public NormalMDto1() {
		super();
	}
	
	public NormalMDto1(String email,String password)
	{
		this.email=email;
		this.password=password;
	}
	
	public NormalMDto1(ResultSet rs) throws SQLException
	{
		setEmail(rs.getString("email"));
		setPassword(rs.getString("password"));
		setGender(rs.getString("gender"));
		setBirth(rs.getString("birth"));
		setCareer(rs.getString("career"));
		setEdu(rs.getString("edu"));
		setPrize(rs.getString("prize"));
		setCertificate(rs.getString("certificate"));
		setPortfolio(rs.getString("portfolio"));
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
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
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	public String getPortfolio() {
		return portfolio;
	}
	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}

	public String getReg() {
		return reg;
	}

	public void setReg(String reg) {
		this.reg = reg;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPwQuiz() {
		return pwQuiz;
	}

	public void setPwQuiz(String pwQuiz) {
		this.pwQuiz = pwQuiz;
	}

	public String getPwAns() {
		return pwAns;
	}

	public void setPwAns(String pwAns) {
		this.pwAns = pwAns;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
