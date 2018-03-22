package job.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import job.exception.ImageException;
@Service
public interface ImageService {
	void input(MultipartHttpServletRequest request, String email) throws IllegalStateException, IOException, ImageException;
	void delete(HttpServletRequest request);
}
