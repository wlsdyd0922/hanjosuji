package job.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import job.model.NotesDaoImpl;

public class NotesIntercepter extends HandlerInterceptorAdapter{
	private Logger log = LoggerFactory.getLogger(getClass());
	@Autowired
	private NotesDaoImpl ntdao;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String email = (String) request.getSession().getAttribute("accept");
		if(email!=null) 
			request.setAttribute("notes_count", ntdao.count(email));
		return super.preHandle(request, response, handler);
	}
}
