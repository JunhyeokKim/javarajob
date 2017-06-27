package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javarajob.service.FileUploadService;

@Controller
@RequestMapping("/file.do")
public class FileUpload {

	@Autowired(required = false)
	FileUploadService s;
	
	@RequestMapping(method = RequestMethod.GET)
	public String view(){
		return "resume";
	}
	
}
