package job.model;

import java.util.List;
 
import org.springframework.stereotype.Repository;

import job.bean.CompanyDto;

@Repository
public interface CompanyDao {
	void insert(CompanyDto cdto);
	List<CompanyDto> getList();
	List<CompanyDto> searchList(String name);
	CompanyDto searchTarget(String company);
	boolean delete(CompanyDto cdto);
	boolean edit(CompanyDto cdto);
	boolean image(CompanyDto cdto);
}