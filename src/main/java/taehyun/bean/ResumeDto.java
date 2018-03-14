package taehyun.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ResumeDto {
	private String savename;
	private String filename;
	private String filetype;
	private long filelen;
	private String reg;
	private String author;
	
	public String getSavename() {
		return savename;
	}
	public void setSavename(String savename) {
		this.savename = savename;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFiletype() {
		return filetype;
	}
	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}
	public long getFilelen() {
		return filelen;
	}
	public void setFilelen(long filelen) {
		this.filelen = filelen;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
	public ResumeDto() {
		super();
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public ResumeDto(ResultSet rs) throws SQLException{
		setSavename(rs.getString("savename"));
		setFilename(rs.getString("filename"));
		setFiletype(rs.getString("filetype"));
		setFilelen(rs.getLong("filelen"));
		setReg(rs.getString("reg"));
		setAuthor(rs.getString("author"));
	}
}