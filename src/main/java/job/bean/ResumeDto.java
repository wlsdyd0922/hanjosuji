package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
   
public class ResumeDto {
	private String title;
	private String career;
	private String edu;
	private String salary;
	private String pr;
	private String portfolio;
	private String certi;
	private String prize;
	private String email;
	private int boardno;
	private String face;
	public ResumeDto(ResultSet rs) throws SQLException {
		setTitle(rs.getString("title"));
		setCareer(rs.getString("career"));
		setEdu(rs.getString("edu"));
		setSalary(rs.getString("salary"));
		setPr(rs.getString("pr"));
		setPortfolio(rs.getString("portfolio"));
		setCerti(rs.getString("certi"));
		setPrize(rs.getString("prize"));
		setEmail(rs.getString("email"));
		setBoardno(rs.getInt("boardno"));
		setFace(rs.getString("face"));
	}
	public ResumeDto(String title, String career, String edu, String salary, String pr, String portfolio, String certi,
			String prize, String email, int boardno, String face) {
		super();
		this.title = title;
		this.career = career;
		this.edu = edu;
		this.salary = salary;
		this.pr = pr;
		this.portfolio = portfolio;
		this.certi = certi;
		this.prize = prize;
		this.email = email;
		this.boardno = boardno;
		this.face = face;
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
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
}