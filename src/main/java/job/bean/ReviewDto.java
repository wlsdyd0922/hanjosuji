package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ReviewDto {
	private String company;
	private String enddate;
	private String type;
	private String typedetail;
	private String part;
	private String career;
	private String location;
	private int grade;
	private String onecomment;
	private String hopecomment;
	private int welfare;
	private int balance;
	private int executive;
	private int recommend;
	public ReviewDto(ResultSet rs) throws SQLException{
		setCompany(rs.getString("company"));
		setEnddate(rs.getString("enddate"));
		setType(rs.getString("type"));
		setTypedetail(rs.getString("typedetail"));
		setPart(rs.getString("part"));
		setCareer(rs.getString("career"));
		setLocation(rs.getString("location"));
		setGrade(rs.getInt("grade"));
		setOnecomment(rs.getString("onecomment"));
		setHopecomment(rs.getString("hopecomment"));
		setWelfare(rs.getInt("welfare"));
		setBalance(rs.getInt("balance"));
		setExecutive(rs.getInt(executive));
		setRecommend(rs.getInt("recommend"));
	}
	public ReviewDto() {
		super();
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTypedetail() {
		return typedetail;
	}
	public void setTypedetail(String typedetail) {
		this.typedetail = typedetail;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getOnecomment() {
		return onecomment;
	}
	public void setOnecomment(String onecomment) {
		this.onecomment = onecomment;
	}
	public String getHopecomment() {
		return hopecomment;
	}
	public void setHopecomment(String hopecomment) {
		this.hopecomment = hopecomment;
	}
	public int getWelfare() {
		return welfare;
	}
	public void setWelfare(int welfare) {
		this.welfare = welfare;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public int getExecutive() {
		return executive;
	}
	public void setExecutive(int executive) {
		this.executive = executive;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
}