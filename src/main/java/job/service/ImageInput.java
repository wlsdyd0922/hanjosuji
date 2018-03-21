package job.service;

import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import job.exception.ImageException;
@Service
public interface ImageInput {
	void input(MultipartHttpServletRequest request, String email) throws IllegalStateException, IOException, ImageException;
}
