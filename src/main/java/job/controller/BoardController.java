package job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
@RequestMapping("company/boardwrite")
public String boardWrite() {
	return "company/boardwrite";
}

}
