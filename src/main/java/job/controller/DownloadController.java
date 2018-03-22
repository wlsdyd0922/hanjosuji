package job.controller;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DownloadController {
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	//response 없이 ResponseEntity를 사용하여 다운로드 반환(Http 응답 데이터 세트)
	@RequestMapping("/download/{filename:.+}")
	public ResponseEntity<ByteArrayResource> download
										(@PathVariable String filename) throws IOException{
		String folder = "E:\\sw3Spring\\hanjosuji\\src\\main\\webapp\\upload";
		File target = new File(folder, filename);
		byte[] data = FileUtils.readFileToByteArray(target);
		
		ByteArrayResource resource = new ByteArrayResource(data);
		ResponseEntity<ByteArrayResource> entity = 
				ResponseEntity
					.ok()
					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename="+target.getName())
					.contentType(MediaType.APPLICATION_OCTET_STREAM)
					.contentLength(data.length)
					.body(resource);
		return entity;
	}
}