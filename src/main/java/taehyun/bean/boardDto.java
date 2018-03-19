package taehyun.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class boardDto {
	
	private int no;
	private String location;
	private String title;
	private int salary;
	private String working;
	private String reg;
	
	public boardDto() {
		super();
	}
	public boardDto(int no, String location, String title, int salary, String working, String reg) {
		super();
		this.no = no;
		this.location = location;
		this.title = title;
		this.salary = salary;
		this.working = working;
		this.reg = reg;
	}
	public boardDto(ResultSet rs) throws SQLException {
		setNo(rs.getInt("no"));
		setLocation(rs.getString("location"));
		setTitle(rs.getString("title"));
		setSalary(rs.getInt("salary"));
		setWorking(rs.getString("working"));
		setReg(rs.getString("reg"));
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
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
