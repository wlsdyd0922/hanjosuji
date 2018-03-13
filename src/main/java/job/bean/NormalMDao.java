package job.bean;

import java.util.List;

public interface NormalMDao {
	void insert(NormalMDto1 nmdto);
	boolean edit(NormalMDto1 nmdto);
	boolean drop(NormalMDto1 nmdto);
	String getEmail(NormalMDto1 nmdto);
	String getPw(NormalMDto1 nmdto);
	NormalMDto1 info(String email);
	List<NormalMDto1> list();
	boolean login(String email, String password);
}
