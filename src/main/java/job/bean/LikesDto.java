package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;


public class LikesDto {
	private String email;
	private String company;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public LikesDto() {
		super();
	}
	public LikesDto(ResultSet rs) throws SQLException {
		setEmail(rs.getString("email"));
		setCompany(rs.getString("company"));
	}
}
