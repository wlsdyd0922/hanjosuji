package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.CompanyMDto;
@Repository
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
