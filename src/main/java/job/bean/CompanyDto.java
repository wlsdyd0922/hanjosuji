package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class CompanyDto {
	private int no;
	private String name;
	private String industry;
	private String ceo;
	private String birth;
	private String website;
	private int employee;
	private String type;
	private int sales;
	private String addrloc;
	private String addr2loc;
	private String imgname;
	private String imgencoding;
	private String regcode;
	private String checked;
	private int hit;
	
	public CompanyDto() {
		super();
	}
	
	public CompanyDto(MultipartHttpServletRequest mRequest) {
		setName(mRequest.getParameter("name"));
		setIndustry(mRequest.getParameter("industry"));
		setCeo(mRequest.getParameter("ceo"));
		setBirth(mRequest.getParameter("birth"));
		setWebsite(mRequest.getParameter("website"));
		setEmployee(Integer.parseInt(mRequest.getParameter("employee")));
		setType(mRequest.getParameter("type"));
		setSales(Integer.parseInt(mRequest.getParameter("sales")));
		setAddrloc(mRequest.getParameter("addrloc"));
		setAddr2loc(mRequest.getParameter("addr2loc"));
		setImgname(mRequest.getParameter("imgname"));
		setImgencoding(mRequest.getParameter("imgencoding"));
		setRegcode(mRequest.getParameter("regcode"));
		setChecked(mRequest.getParameter("checked"));
	}
	
	public CompanyDto(ResultSet rs) throws SQLException {
		setNo(rs.getInt("no"));
		setName(rs.getString("name"));
		setIndustry(rs.getString("industry"));
		setCeo(rs.getString("ceo"));
		setBirth(rs.getString("birth"));
		setWebsite(rs.getString("website"));
		setEmployee(rs.getInt("employee"));
		setType(rs.getString("type"));
		setSales(rs.getInt("sales"));
		setAddrloc(rs.getString("addrloc"));
		setAddr2loc(rs.getString("addr2loc"));
		setImgname(rs.getString("imgname"));
		setImgencoding(rs.getString("imgencoding"));
		setRegcode(rs.getString("regcode"));
		setChecked(rs.getString("checked"));
		setHit(rs.getInt("hit"));
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public String getAddrloc() {
		return addrloc;
	}

	public void setAddrloc(String addrloc) {
		this.addrloc = addrloc;
	}

	public String getAddr2loc() {
		return addr2loc;
	}

	public void setAddr2loc(String addr2loc) {
		this.addr2loc = addr2loc;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public String getImgencoding() {
		return imgencoding;
	}

	public void setImgencoding(String imgencoding) {
		this.imgencoding = imgencoding;
	}

	public String getRegcode() {
		return regcode;
	}

	public void setRegcode(String regcode) {
		this.regcode = regcode;
	}

	public String getChecked() {
		return checked;
	}

	public void setChecked(String checked) {
		this.checked = checked;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	
	
}