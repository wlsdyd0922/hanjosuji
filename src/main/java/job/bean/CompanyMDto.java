package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CompanyMDto {	//14개
	private String email; 
	private String password; 
	private String company; 	//회사명
	private String ceo; 		//사장이름
	private String phone;		//연락처
	private String pwquiz;		//비밀번호 질문
	private String pwans;		//비밀번호 답변
	private String birth;		//설립일 
	private String sales; 		//매출액
	private String type;		//기업형태(중소,중견,대기업)
	private String location;	//위치
	private String industry; 	//산업군(ex IT)
	private int employee;		//사원수
	private String reg;			//가입일
	public CompanyMDto() {
		super();
	}
	public CompanyMDto(ResultSet rs) throws SQLException{
		setEmail(rs.getString("email"));
		setPassword(rs.getString("password"));
		setCompany(rs.getString("company"));
		setCeo(rs.getString("ceo"));
		setPhone(rs.getString("phone"));
		setPwquiz(rs.getString("pwquiz"));
		setPwans(rs.getString("pwans"));
		setBirth(rs.getString("birth"));
		setSales(rs.getString("sales"));
		setType(rs.getString("type"));
		setLocation(rs.getString("location"));
		setIndustry(rs.getString("industry"));
		setEmployee(rs.getInt("employee"));
		setReg(rs.getString("reg"));
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
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public String getCeo() {
		return ceo;
	}
	public void setCeo(String ceo) {
		this.ceo = ceo;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getSales() {
		return sales;
	}
	public void setSales(String sales) {
		this.sales = sales;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public int getEmployee() {
		return employee;
	}
	public void setEmployee(int employee) {
		this.employee = employee;
	} 
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
}
