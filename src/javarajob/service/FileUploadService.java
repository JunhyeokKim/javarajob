package javarajob.service;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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

	public void uploadDoc(MultipartFile docu, String id, int count) {
		String name = id + "_" + docu.getOriginalFilename();
		String docupath = selfUp + name;
		File document = new File(docupath);
		SelfDocument sd = new SelfDocument();
		
		sd.setUserId(id);
		sd.setFileName(docu.getOriginalFilename());
		
		if(count == 0) dao.docuUpload(sd);
		else if(count == 1) dao.docuUpload2(sd);
		
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

	public void downloadFile(SelfDocument down, HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String docupath = selfUp + down.getUserId() + "_" + down.getFileName();
		File download = new File(docupath);
		
		InputStream inputStream = new BufferedInputStream(new FileInputStream(download));
		String mimeType = URLConnection.guessContentTypeFromStream(inputStream);
		
		if(mimeType == null){
			mimeType = "application/octet-stream";
		}
		
		resp.setContentType(mimeType);
		resp.setContentLength((int) download.length());
		resp.setHeader("Content-Disposition", "attachment; filename=\""+down.getFileName()+"\"");
		
	}

	@ExceptionHandler(IOException.class)
	public ModelAndView handleErrors(Exception e){
		ModelAndView mav = new ModelAndView("downloadError");
		mav.addObject("exception", e);
		
		return mav;
	}
}
