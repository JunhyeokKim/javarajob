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
public class FileService {

	@Autowired(required = false)
	private SelfDocuDao dao;

	@Value("${selfUp}")
	String selfUp;

	@Value("${picUp}")
	String picUp;

	public void uploadPic(MultipartFile pic, String id, String ext) {
		String name = id + "_profile."+ext;
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

	public void uploadDoc(MultipartFile docu, SelfDocument sd, int count) {
		String name = sd.getUserId() + "_" + docu.getOriginalFilename();
		String docupath = selfUp + name;
		File document = new File(docupath);

		sd.setFileName(docu.getOriginalFilename());

		if (count == 0)
			dao.docuUpload(sd);
		else if (count == 1)
			dao.docuUpload2(sd);

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

	public ArrayList<SelfDocument> docuView(String id) {
		return dao.docuView(id);
	}

	public void delSelfIntro(SelfDocuMulti del) {
		String[] docupath = new String[del.getFileNames().length];
		for (int i = 0; i < del.getFileNames().length; i++) {
			docupath[i] = selfUp + del.getUserId() + "_" + del.getFileNames()[i];
			File delFile = new File(docupath[i]);
			delFile.delete();
		}
		dao.delSelfIntro(del);
	}
	
	public void delAccoDocu(String id){
		dao.delAccoDocu(id);
	}
	
	public File getFile(SelfDocument down) {
		String docupath = selfUp + down.getUserId() + "_" + down.getFileName();
		return new File(docupath);
	}

}
