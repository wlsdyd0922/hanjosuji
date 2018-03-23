package job.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminIntercepter extends HandlerInterceptorAdapter{
	private Logger log = LoggerFactory.getLogger(getClass());
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String grade = (String) request.getSession().getAttribute("grade");
		log.debug("등급={}",grade);
//		if(grade.equals("관리자")) {
//			response.sendRedirect(request.getContextPath()+"/login");
//			return false;
//		}
		return super.preHandle(request, response, handler);
	}
}
