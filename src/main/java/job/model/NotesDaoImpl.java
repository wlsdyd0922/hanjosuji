package job.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import job.bean.NotesDto;

@Repository("NotesDao")
public class NotesDaoImpl implements NotesDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private ResultSetExtractor<NotesDto> extractor = (rs)->{
		if(rs.next()) return new NotesDto(rs);
		else return null;
	};
	private RowMapper<NotesDto> mapper = (rs, idx)->{
		return new NotesDto(rs);
	};
	private ResultSetExtractor<NotesDto> extractor2 = (rs)->{
		if(rs.next()) return new NotesDto(rs);
		else return null;
	};
	@Override
	public void insert(NotesDto ndto) {
		String sql = "insert into notes values(notes_seq.nextVal,?,?,?,?,sysdate,?)";
		Object[] args = {
			ndto.getTitle(),
			ndto.getContents(),
			ndto.getEmail(),
			ndto.getCompany(),
			ndto.getRead()
		};
		jdbcTemplate.update(sql, args);
	}

	@Override
	public List<NotesDto> getList(String email) {
		String sql = "select * from notes where email=? order by reg desc";
		return jdbcTemplate.query(sql, mapper, email);
	}

	@Override
	public boolean send(NotesDto ndto, String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(NotesDto ndto) {
		String sql = "delete from notes where no=?";
		return jdbcTemplate.update(sql,ndto.getNo())>0;
	}

	@Override
	public boolean read(NotesDto ndto) {
		String sql = "update hireboard set read='1' where no=?";
		return jdbcTemplate.update(sql, ndto.getNo())>0;
	}

	@Override
	public NotesDto search(String email, int no) {
		String sql = "select * from notes where email=? and no=?";
		return jdbcTemplate.query(sql, extractor, email,no);
	}

}
