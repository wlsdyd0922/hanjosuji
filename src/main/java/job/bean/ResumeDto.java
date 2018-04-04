package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ResumeDto {
	private String title;
	private int count;
	private String favdivision;
	private String favregion;
	private String workingstatus;
	private String career;
	private String edu;
	private String salary;
	private String pr1;
	private String pr2;
	private String pr3;
	private String pr4;
	private String portfolio;
	private String certi;
	private String prize;
	private String email;
	private int boardno;
	
	@Override
	public String toString() {
		return "[workingstatus = "+workingstatus+"]";
	}
	
	public ResumeDto() {
		super();
	}

	public ResumeDto(ResultSet rs) throws SQLException {
		setTitle(rs.getString("title"));
		setCount(rs.getInt("count"));
		setFavdivision(rs.getString("favdivision"));
		setFavregion(rs.getString("favregion"));
		setWorkingstatus(rs.getString("workingstatus"));
		setCareer(rs.getString("career"));
		setEdu(rs.getString("edu"));
		setSalary(rs.getString("salary"));
		setPr1(rs.getString("pr1"));
		setPr2(rs.getString("pr2"));
		setPr3(rs.getString("pr3"));
		setPr4(rs.getString("pr4"));
		setPortfolio(rs.getString("portfolio"));
		setCerti(rs.getString("certi"));
		setPrize(rs.getString("prize"));
		setEmail(rs.getString("email"));
		setBoardno(rs.getInt("boardno"));
	}
	public ResumeDto(ResultSet rs,int a) throws SQLException{
		setBoardno(rs.getInt("boardno"));
		setTitle(rs.getString("title"));
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
	public String getPr1() {
		return pr1;
	}

	public void setPr1(String pr1) {
		this.pr1 = pr1;
	}

	public String getPr2() {
		return pr2;
	}

	public void setPr2(String pr2) {
		this.pr2 = pr2;
	}

	public String getPr3() {
		return pr3;
	}

	public void setPr3(String pr3) {
		this.pr3 = pr3;
	}

	public String getPr4() {
		return pr4;
	}

	public void setPr4(String pr4) {
		this.pr4 = pr4;
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

	public String getFavdivision() {
		return favdivision;
	}

	public void setFavdivision(String favdivision) {
		this.favdivision = favdivision;
	}

	public String getFavregion() {
		return favregion;
	}

	public void setFavregion(String favregion) {
		this.favregion = favregion;
	}

	public void setWorkingstatus(String workingstatus) {
		this.workingstatus = workingstatus;
	}
	
	public String getWorkingstatus() {
		return workingstatus;
	}
	
	public String workingstatusKor() {
		if(getWorkingstatus().equals("new"))
			return "신입";
		else
			return "경력";
	}

	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
}