package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
   
public class ResumeDto {
	private String title;
	private int count;
	private String favRegion;
	private String favDivision;
	private String workingstatus;
	private String career;
	private String edu;
	private String salary;
	private String pr;
	private String portfolio;
	private String certi;
	private String prize;
	private String email;
	private int boardno;
	
	public ResumeDto(ResultSet rs) throws SQLException {
		setTitle(rs.getString("title"));
		setCount(rs.getInt("count"));
		setFavDivision(rs.getString("favDivision"));
		setFavRegion(rs.getString("favRegion"));
		setWorkingstatus(rs.getString("workingstatus"));
		setCareer(rs.getString("career"));
		setEdu(rs.getString("edu"));
		setSalary(rs.getString("salary"));
		setPr(rs.getString("pr"));
		setPortfolio(rs.getString("portfolio"));
		setCerti(rs.getString("certi"));
		setPrize(rs.getString("prize"));
		setEmail(rs.getString("email"));
		setBoardno(rs.getInt("boardno"));
	}
	public ResumeDto(String title, int count,String career, String edu, String salary, String pr, String portfolio, String certi,
			String prize, String email, String favRegion, String favDivision, String workingstatus, int boardno) {
		super();
		this.title = title;
		this.count = count;
		this.career = career;
		this.edu = edu;
		this.salary = salary;
		this.pr = pr;
		this.portfolio = portfolio;
		this.certi = certi;
		this.prize = prize;
		this.email = email;
		this.favRegion = favRegion;
		this.favDivision = favDivision;
		this.workingstatus = workingstatus;
		this.boardno = boardno;
	}
	
	public ResumeDto() {
		super();
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getPr() {
		return pr;
	}
	public void setPr(String pr) {
		this.pr = pr;
	}
	public String getPortfolio() {
		return portfolio;
	}
	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}
	public String getCerti() {
		return certi;
	}
	public void setCerti(String certi) {
		this.certi = certi;
	}
	public String getPrize() {
		return prize;
	}
	public void setPrize(String prize) {
		this.prize = prize;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBoardno() {
		return boardno;
	}
	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}
	public String getFavRegion() {
		return favRegion;
	}
	public void setFavRegion(String favRegion) {
		this.favRegion = favRegion;
	}
	public String getFavDivision() {
		return favDivision;
	}
	public void setFavDivision(String favDivision) {
		this.favDivision = favDivision;
	}
	public String getWorkingstatus() {
		return workingstatus;
	}
	public void setWorkingstatus(String workingstatus) {
		this.workingstatus = workingstatus;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
}