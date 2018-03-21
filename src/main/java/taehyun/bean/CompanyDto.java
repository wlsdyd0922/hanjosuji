package taehyun.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CompanyDto {
	private String name;
	private String industry;
	private String ceo;
	private String birth;
	private String website;
	private int employee;
	private String type;
	private int sales;
	private String location;
	private String imgname;
	private String imgecnoding;
	
	public CompanyDto() {
		super();
	}
	
	public CompanyDto(ResultSet rs) throws SQLException {
		setName(rs.getString("name"));
		setIndustry(rs.getString("industry"));
		setCeo(rs.getString("ceo"));
		setBirth(rs.getString("birth"));
		setWebsite(rs.getString("website"));
		setEmployee(rs.getInt("employee"));
		setType(rs.getString("type"));
		setSales(rs.getInt("sales"));
		setLocation(rs.getString("location"));
		setImgname(rs.getString("imgname"));
		setImgecnoding(rs.getString("imgecnoding"));
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getCeo() {
		return ceo;
	}
	public void setCeo(String ceo) {
		this.ceo = ceo;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public int getEmployee() {
		return employee;
	}
	public void setEmployee(int employee) {
		this.employee = employee;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	public String getImgecnoding() {
		return imgecnoding;
	}
	public void setImgecnoding(String imgecnoding) {
		this.imgecnoding = imgecnoding;
	}
	
}