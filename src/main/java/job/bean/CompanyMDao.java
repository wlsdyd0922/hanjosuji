package job.bean;

import java.util.List;

public interface CompanyMDao {
	void register(CompanyMDto cmdto);
	boolean login(String email, String password);
	boolean exit(CompanyMDto cmdto);
	String findEmail(CompanyMDto cmdto);
	String findPassword(CompanyMDto cmdto);
	boolean edit(CompanyMDto cmdto);
	CompanyMDto info(String email);
	List<CompanyMDto> list();
}
