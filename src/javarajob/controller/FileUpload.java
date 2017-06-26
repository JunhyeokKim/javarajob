package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javarajob.service.FileUploadService;

@Controller
@RequestMapping("/file.do")
public class FileUpload {

	@Autowired(required = false)
	FileUploadService s;
	
	@RequestMapping(method = RequestMethod.GET)
	public String view(){
		return "fileTest";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String picUp(@RequestParam("pic") MultipartFile pic){
		System.out.println("���� �ɱ�?");
		System.out.println("Ȯ�� : "+pic.getOriginalFilename());
		s.uploadPic(pic);
		System.out.println("����� �ȵɵ�");
		return "fileTest";
	}
}
