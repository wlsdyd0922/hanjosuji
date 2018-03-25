package job.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import job.bean.AdminDto;
@Repository("adminDao")
public class AdminDaoImpl implements AdminDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	String sql;
	
	@Override
	public int count_page() {
		sql = "select count(*) from 테이블 이름";
		return jdbcTemplate.update(sql);
	}

	@Override
	public List<AdminDto> list(int end, int begin) {
		sql = "select * from (select rownum rn, A.* from (select * from 테이블 이름)A)where rn between ? and ?";
		/*return jdbcTemplate.query(sql, mapper);*/
		//mapper 입력 필요
		return null;
	}

}
