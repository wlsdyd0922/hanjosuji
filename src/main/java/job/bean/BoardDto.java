package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardDto {
	private int no; 
	private String title;
	private int count;
	private String state;
	private int employee;	
	private String career;
	private String empltype;
	private String salary;
	private String working;
	private String contents;
	private String company;
	private String reg;
	private String department;
	private String edu;
	private String location;

	public BoardDto() {
		super();
	}

	public BoardDto(ResultSet rs) throws SQLException {
		setNo(rs.getInt("no"));
		setTitle(rs.getString("title"));
		setCount(rs.getInt("count"));
		setState(rs.getString("state"));
		setEmployee(rs.getInt("employee"));
		setCareer(rs.getString("career"));
		setEmpltype(rs.getString("empltype"));
		setSalary(rs.getString("salary"));
		setWorking(rs.getString("working"));
		setContents(rs.getString("contents"));
		setCompany(rs.getString("company"));
		setReg(rs.getString("reg"));
		setDepartment(rs.getString("department"));
		setLocation(rs.getString("location"));
	}
	public int getEmployee() {
		return employee;
	}
	public void setEmployee(int employee) {
		this.employee = employee;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getWorking() {
		return working;
	}
	public void setWorking(String working) {
		this.working = working;
	}
	public String getReg() { 
		return reg.substring(0,10).replace("-",".");
	}
	public void setReg(String reg) {
		this.reg = reg;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getEmpltype() {
		return empltype;
	}

	public void setEmpltype(String empltype) {
		this.empltype = empltype;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}
	public String getDepartment() {
		return department;
	}
	public String getEdu() {
		return edu;
	}
	
	public void setEdu(String edu) {
		this.edu = edu;
	}
	
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}

}