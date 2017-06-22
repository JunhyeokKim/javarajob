package javarajob.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/self_intro.do")
public class SelfIntroCtrl {
	
	@RequestMapping(method = RequestMethod.GET)
	public String selfView(){
		return "self_introduction";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String uploadSelfIntro(@RequestParam("selfIntro") MultipartFile report){
		System.out.println("서버에서 온 파일 이름 : "+report.getOriginalFilename());
		uploadDoc(report);
		return "self_introduction";
	}
	
	@Value("${selfUp}")
	String fpath01;
	
	private void uploadDoc(MultipartFile report){
		String fname = report.getOriginalFilename();
		
		String file01 = fpath01 + fname;
		File f1 = new File(file01);
		try {
			report.transferTo(f1);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
