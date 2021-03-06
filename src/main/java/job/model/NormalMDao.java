package job.model;
 
import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.NormalMDto;


@Repository
public interface NormalMDao {
	boolean register(NormalMDto nmdto);
	boolean edit(NormalMDto nmdto);
	public boolean face(String savename, String email);
	String getEmail(NormalMDto nmdto);
	String getPw(NormalMDto nmdto);
	NormalMDto info(String email);
	List<NormalMDto> list();
	boolean login(String email, String password);
	Integer ChkSameId(String email);
	boolean setCompany(String company,String email);
	List<NormalMDto> adminList();
	String getCompany(String email);
	boolean member_delete(String email, String pw);
	int Chkaccount(NormalMDto nmdto);
}
