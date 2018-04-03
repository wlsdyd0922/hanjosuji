package job.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import job.bean.NotesDto;

@Repository
public interface NotesDao {
	void insert(NotesDto ntdto);
	List<NotesDto> getList(String email);
	List<NotesDto> sendList(String sender);
	boolean delete(NotesDto ntdto);
	boolean read(NotesDto ntdto);
	NotesDto search(String email,int no);
	String count(String email);
}
