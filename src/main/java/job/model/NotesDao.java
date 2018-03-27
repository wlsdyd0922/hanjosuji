package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.NotesDto;

@Repository
public interface NotesDao {
	void insert(NotesDto ndto);
	List<NotesDto> getList(String email);
	boolean send(NotesDto ndto,String email);
	boolean delete(NotesDto ndto);
	boolean read(NotesDto ndto);
}
