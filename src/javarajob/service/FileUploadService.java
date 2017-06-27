package javarajob.service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUploadService {

	@Value("${selfUp}")
	String selfUp;

	@Value("${picUp}")
	String picUp;

	public void uploadPic(MultipartFile pic, String id) {
		String name = id + "_" + pic.getOriginalFilename();
		String picpath = picUp + name;
		File picture = new File(picpath);
		try {
			pic.transferTo(picture);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void uploadDoc(MultipartFile docu) {
		String name = docu.getOriginalFilename();
		String docupath = selfUp + name;
		File document = new File(docupath);
		try {
			docu.transferTo(document);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
