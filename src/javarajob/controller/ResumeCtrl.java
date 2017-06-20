package javarajob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javarajob.vo.Resume;

@Controller
public class ResumeCtrl {

	/*@Autowired(required = false)
	private ResumeService s;*/
	
	// http://localhost:6080/javarajob/testttt.do
	@RequestMapping("/testttt.do")
	public String insertResume(Resume r){
		return "resume";
	}
}
