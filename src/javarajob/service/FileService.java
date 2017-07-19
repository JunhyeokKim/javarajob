package javarajob.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javarajob.repository.SelfDocuDao;
import javarajob.vo.Resume;
import javarajob.vo.SelfDocuMulti;
import javarajob.vo.SelfDocument;

@Service
public class FileService {

	@Autowired(required = false)
	private SelfDocuDao dao;

	@Value("${selfUp}")
	String selfUp;

	public void uploadPic(MultipartFile pic, String id, String ext) {
		String name = id + "_profile." + ext;
		String picpath = selfUp + id + "/profile/" + name;
		File picture = new File(picpath);
		if (!picture.exists()) {
			picture.mkdirs();
		}
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
		String docupath = selfUp + sd.getUserId() + "/" + name;
		File document = new File(docupath);
		if (!document.exists()) {
			document.mkdirs();
		}

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
			docupath[i] = selfUp + del.getUserId() + "/" + del.getUserId() + "_" + del.getFileNames()[i];
			File delFile = new File(docupath[i]);
			delFile.delete();
		}
		dao.delSelfIntro(del);
	}

	public void delAccoDocu(String id) {
		String delPath = selfUp + id + "/";
		delAllFiles(delPath);
		dao.delAccoDocu(id);
	}
	
	private void delAllFiles(String delPath) {
		File file = new File(delPath);
		System.out.println("delPath : "+delPath);
		System.out.println("exist? : "+file.exists());
		if(file.exists()){
			File[] childFileList = file.listFiles();
			for (File childFile : childFileList) {
				if (childFile.isDirectory()) {
					delAllFiles(childFile.getAbsolutePath()); // 하위 디렉토리 루프
				} else {
					childFile.delete(); // 하위 파일삭제
				}
			}
			file.delete(); // root 삭제
		}
	}

	public File getFile(SelfDocument down) {
		String docupath = selfUp + down.getUserId() + "/" + down.getUserId() + "_" + down.getFileName();
		return new File(docupath);
	}
	
	public File getResume(Resume res) {
		String docupath = selfUp + res.getUserId() + "/" + res.getUserId() + "_resume.pdf";
		return new File(docupath);
	}

}
