package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javarajob.service.ResumeService;
import javarajob.vo.Resume;

@Controller
public class ResumeCtrl {

	@Autowired(required = false)
	private ResumeService s;

	// http://localhost:6080/javarajob/resume.do
	@RequestMapping("/resume.do")
	public String resumeView(@RequestParam(value = "userId", defaultValue = "0") String id, Model d) {
		d.addAttribute("resume", s.oneResume(id));
		System.out.println("id? "+id);
		Resume r = s.oneResume(id);
		System.out.println(r.getUserId());
		System.out.println(r.getName());
		System.out.println(r.getBirthDay());
		System.out.println(r.getCtel());
		return "resume";
	}
	
	@RequestMapping("/resume_upt.do")
	public String uptResume(Resume r){
		s.uptResume(r);
		System.out.println(r.getUserId());
		System.out.println(r.getName());
		System.out.println(r.getBirthDay());
		System.out.println(r.getCtel());
		return "forward:/resume.do";
	}

}
