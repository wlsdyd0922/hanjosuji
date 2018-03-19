package taehyun.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class boardDto {
	
	private int no;
	private int count;
	private String title;
	private int salary;
	private String working;
	private String company;
	private String reg;
	
	public boardDto() {
		super();
	}
	public boardDto(int no, int count, String title, int salary, String working, String company, String reg) {
		super();
		this.no = no;
		this.count = count;
		this.title = title;
		this.salary = salary;
		this.working = working;
		this.company = company;
		this.reg = reg;
	}

	public boardDto(ResultSet rs) throws SQLException {
		setNo(rs.getInt("no"));
		setCount(rs.getInt("count"));
		setTitle(rs.getString("title"));
		setSalary(rs.getInt("salary"));
		setWorking(rs.getString("working"));
		setCompany(rs.getString("company"));
		setReg(rs.getString("reg"));
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
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getWorking() {
		return working;
	}
	public void setWorking(String working) {
		this.working = working;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
	
}
