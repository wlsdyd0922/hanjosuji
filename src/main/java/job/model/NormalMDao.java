package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.NormalMDto;
@Repository
public interface NormalMDao {
	boolean register(NormalMDto nmdto);
	boolean edit(NormalMDto nmdto);
	public boolean face(String savename, String email);
	boolean drop(NormalMDto nmdto);
	String getEmail(NormalMDto nmdto);
	String getPw(NormalMDto nmdto);
	NormalMDto info(String email);
	List<NormalMDto> list();
	boolean login(String email, String password);
	List<NormalMDto> adminList();
	Integer ChkSameId(String email);
	boolean setCompany(String company,String email);
}
