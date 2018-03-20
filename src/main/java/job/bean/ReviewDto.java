package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ReviewDto {	//15개
	private int no;				//일련번호
	private String company;		//회사이름
	private String status;		//퇴사 상태
	private String type;		//직군
	private String typedetail;	//세부직종
	private String career;		//경력 몇년인지
	private String location;	//근무지역
	private int grade;			//기업평점
	private String onecomment;	//한줄평
	private String hopecomment;	//바라는점
	private int welfare;
	private int balance;
	private int executive;
	private int recommend;
	private String reg;
	public ReviewDto(ResultSet rs) throws SQLException{
		this.setNo(rs.getInt("no"));
		this.setCompany(rs.getString("company"));
		this.setStatus(rs.getString("status"));
		this.setType(rs.getString("type"));
		this.setTypedetail(rs.getString("typedetail"));
		this.setCareer(rs.getString("career"));
		this.setLocation(rs.getString("location"));
		this.setGrade(rs.getInt("grade"));
		this.setOnecomment(rs.getString("onecomment"));
		this.setHopecomment(rs.getString("hopecomment"));
		this.setWelfare(rs.getInt("welfare"));
		this.setBalance(rs.getInt("balance"));
		this.setExecutive(rs.getInt("executive"));
		this.setRecommend(rs.getInt("recommend"));
		this.setReg(rs.getString("reg"));
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
	public String getReg() {
		return reg.substring(0,10).replace("-", "/");
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
}
