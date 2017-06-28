package javarajob.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javarajob.repository.SelfDocuDao;
import javarajob.vo.SelfDocuMulti;
import javarajob.vo.SelfDocument;

@Service
public class FileUploadService {

	@Autowired(required = false)
	private SelfDocuDao dao;
	
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

	public void uploadDoc(MultipartFile docu, String id) {
		String name = id + "_" + docu.getOriginalFilename();
		String docupath = selfUp + name;
		File document = new File(docupath);
		SelfDocument sd = new SelfDocument();
		sd.setUserId(id);
		sd.setFileName(docu.getOriginalFilename());
		dao.docuUpload(sd);
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

	public ArrayList<SelfDocument> docuView(String id){
		return dao.docuView(id);
	}
	
	public void delSelfIntro(SelfDocuMulti del){
		dao.delSelfIntro(del);
	}
	
}
