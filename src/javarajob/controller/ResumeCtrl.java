package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javarajob.service.ResumeService;
import javarajob.vo.Resume;

@Controller
@RequestMapping("/resume.do")
public class ResumeCtrl {

	@Autowired(required = false)
	private ResumeService s;

	// http://localhost:6080/javarajob/resume.do
	public String resumeView(Resume r, Model d) {
		if (r.getUserId() != null && r.getUserId() != "") {
			d.addAttribute("resume", s.oneResume(r.getUserId()));
			s.uptResume(r);
		}
		return "resume";
	}

}
