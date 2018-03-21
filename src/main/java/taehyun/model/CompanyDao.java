package taehyun.model;

import java.util.List;

import taehyun.bean.CompanyDto;


public interface CompanyDao {
	void insert(CompanyDto cdto);
	List<CompanyDto> getList();
	List<CompanyDto> searchList(String name);
	CompanyDto searchTarget(String company);
	boolean delete(CompanyDto cdto);
	boolean edit(CompanyDto cdto);
	boolean image(CompanyDto cdto);
}