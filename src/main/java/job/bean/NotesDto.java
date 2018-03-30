package job.bean;

import java.sql.ResultSet;
import java.sql.SQLException;


public class NotesDto {
	private int no;
	private String title;
	private String contents;
	private String email;
	private String company;
	private String reg;
	private String read;
	private String sender;
	
	public NotesDto() {
		super();
	}
	public NotesDto(ResultSet rs) throws SQLException {
		setNo(rs.getInt("no"));
		setTitle(rs.getString("title"));
		setContents(rs.getString("contents"));
		setEmail(rs.getString("email"));
		setCompany(rs.getString("company"));
		setReg(rs.getString("reg"));
		setRead(rs.getString("read"));
		setSender(rs.getString("sender"));
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
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
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
	public String getRead() {
		return read;
	}
	public void setRead(String read) {
		this.read = read;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
}
