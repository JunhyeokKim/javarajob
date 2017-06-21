package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javarajob.service.ResumeService;
import javarajob.vo.Resume;

@Controller
public class ResumeCtrl {

	@Autowired(required = false)
	private ResumeService s;
	
	// http://localhost:6080/javarajob/testttt.do
	@RequestMapping("/resume.do")
	public String insertResume(Resume r){
		if(r.getName()!=null && r.getName()!="") {
			s.insertResume(r);
		}
		return "resume";
	}
}
