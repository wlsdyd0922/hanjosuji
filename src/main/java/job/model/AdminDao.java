package job.model;

import java.util.List;

import job.bean.AdminDto;

public interface AdminDao {
	public int count_page();
	public List<AdminDto> list(int end, int begin);
}
