package job.bean;

import java.util.List;

public interface NormalMDao {
	void insert(NormalMDto nmdto);
	boolean edit(NormalMDto nmdto);
	boolean drop(NormalMDto nmdto);
	String getEmail(NormalMDto nmdto);
	String getPw(NormalMDto nmdto);
	NormalMDto info(String email);
	List<NormalMDto> list();
	boolean login(String email, String password);
}
