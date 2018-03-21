package job.service;

import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import job.exception.ImageException;
@Service
public interface ImageInput {
	void input(MultipartFile file, String email) throws IllegalStateException, IOException, ImageException;
}
