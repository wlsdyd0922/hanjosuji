package job.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice(annotations= {Controller.class})
public class ExceptionController {
	private Logger log = LoggerFactory.getLogger(getClass());
	@ExceptionHandler(ImageException.class)
	public String error(ImageException e,Model model) {
		
		log.error("에러발생",e);
		model.addAttribute("error",e.getMessage());
		return "error";
	}
	@ExceptionHandler/*(Exception.class)*/
	public String other(Exception e,Model model) {
		log.error("에러발생",e);
		model.addAttribute("error",e.getMessage());
		return "error";
	}
}
