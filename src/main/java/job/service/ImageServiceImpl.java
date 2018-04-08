package job.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import job.exception.ImageException;
import job.model.NormalMDaoImpl;

@Service("ImageInput")
public class ImageServiceImpl implements ImageService {
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private NormalMDaoImpl nmdao;
	
	@Override
	public void input(MultipartHttpServletRequest request, String email) throws IllegalStateException, IOException, ImageException {
		MultipartFile file = request.getFile("file");
		if (!file.getOriginalFilename().endsWith(".jpg") && !file.getOriginalFilename().endsWith(".png")
				&& !file.getOriginalFilename().endsWith(".gif")) {
			throw new ImageException("이미지는 jpg,png,gif 중에서만 사용 가능합니다");
		}
		
		String savename = UUID.randomUUID().toString();
		String path = servletContext.getRealPath("/upload");
		String enctype = file.getContentType();

		File dir = new File(path);
		if (!dir.exists()) dir.mkdirs();

		File target = new File(dir, savename);
		file.transferTo(target);
		nmdao.setImg(savename,enctype,email);
	}
	@Override
	public void delete(HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("accept");
		String aaa = nmdao.deleteImg(email);
		if (aaa != null) {
			// 파일삭제...
			String path = servletContext.getRealPath("/upload") + "\\" + aaa;
			File file = new File(path);
			if (file.exists())
				file.delete();
		}
	}
}
