package taehyun.model;

import java.util.List;

import taehyun.bean.companyDto;

public interface CompanyDao {
	void insert(companyDto cdto);
	List<companyDto> getList();
	List<companyDto> searchList(String name);
	boolean delete(companyDto cdto);
	boolean edit(companyDto cdto);
}
