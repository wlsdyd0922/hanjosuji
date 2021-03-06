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
	@Override
	public void insert(NotesDto ndto) {
		String sql = "insert into notes values(notes_seq.nextVal,?,?,?,?,sysdate,0,?,null)";
		Object[] args = {
			ndto.getTitle(),
			ndto.getContents(),
			ndto.getEmail(),
			ndto.getCompany(),
			ndto.getSender()
		};
		jdbcTemplate.update(sql, args);
	}

	@Override
	public List<NotesDto> getList(String email) {
		String sql = "select * from notes where email=? order by reg desc";
		return jdbcTemplate.query(sql, mapper, email);
	}

	@Override
	public List<NotesDto> sendList(String sender) {
		String sql = "select * from notes where sender=? order by reg desc";
		return jdbcTemplate.query(sql, mapper, sender);
	}

	@Override
	public boolean delete(NotesDto ndto) {
		String sql = "delete from notes where no=?";
		return jdbcTemplate.update(sql,ndto.getNo())>0;
	}

	@Override
	public boolean read(NotesDto ndto) {
		String sql = "update notes set read='1',readreg=sysdate where no=?";
		return jdbcTemplate.update(sql, ndto.getNo())>0;
	}

	@Override
	public NotesDto search(String email, int no) {
		String sql = "select * from notes where email=? and no=?";
		return jdbcTemplate.query(sql, extractor, email,no);
	}

	@Override
	public String count(String email) {
		String sql = "select count(*) from notes where email=? and read='0'";
		Object[] args = new Object[] {
				email
			};
		return jdbcTemplate.queryForObject(sql,args,String.class);
	}
}
