package taehyun.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardDto {
	
	private int no;
	private int count;
	private String title;
	private String salary;
	private String working;
	private String contesnts;
	private String company;
	private String reg;
	
	public BoardDto() {
		super();
	}
	public BoardDto(int no, int count, String title, String salary, String working, String contents, String company, String reg) {
		super();
		this.no = no;
		this.count = count;
		this.title = title;
		this.salary = salary;
		this.working = working;
		this.contesnts = contents;
		this.company = company;
		this.reg = reg;
	}

	public BoardDto(ResultSet rs) throws SQLException {
		setNo(rs.getInt("no"));
		setCount(rs.getInt("count"));
		setTitle(rs.getString("title"));
		setSalary(rs.getString("salary"));
		setWorking(rs.getString("working"));
		setContesnts(rs.getString("contents"));
		setCompany(rs.getString("company"));
		setReg(rs.getString("reg"));
	}
	public String getContesnts() {
		return contesnts;
	}
	public void setContesnts(String contesnts) {
		this.contesnts = contesnts;
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
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}

}