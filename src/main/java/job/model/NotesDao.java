package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.NotesDto;

@Repository
public interface NotesDao {
	void insert(NotesDto ndto);
	List<NotesDto> getList(String email);
	List<NotesDto> sendList(String sender);
	boolean delete(NotesDto ndto);
	boolean read(NotesDto ndto);
	NotesDto search(String email,int no);
}
