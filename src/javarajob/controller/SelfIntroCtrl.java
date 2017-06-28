package javarajob.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javarajob.service.FileUploadService;
import javarajob.vo.SelfDocuMulti;

@Controller
@RequestMapping("/self_intro.do")
public class SelfIntroCtrl {

	@Autowired(required = false)
	private FileUploadService s;

	@RequestMapping(params = "method=view")
	public String selfView(@RequestParam("userId") String userId, Model d) {
		s.docuView(userId);
		d.addAttribute("documents", s.docuView(userId));
		return "self_introduction";
	}

	@RequestMapping(params = "method=upload")
	public String uploadSelfIntro(@RequestParam("selfIntro") MultipartFile docu, @RequestParam("userId") String id) {
		s.uploadDoc(docu, id);
		return "forward:/self_intro.do?method=view&userId="+id;
	}
	
	@RequestMapping(params = "method=delete")
	public String delSelfIntro(@ModelAttribute("docuMulti") SelfDocuMulti del){
//		s.delSelfIntro(del);
		System.out.println(del.getUserId());
		for(String a:del.getFileNames()){
			System.out.println(a);
		}
		return "forward:/self_intro.do";
	}

}
