package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javarajob.service.ResumeService;
import javarajob.vo.Resume;

@Controller
@RequestMapping("/resume.do")
public class ResumeCtrl {

	@Autowired(required = false)
	private ResumeService s;

	// http://localhost:6080/javarajob/resume.do
	public String insertResume(Resume r) {
		if (r.getName() != null && r.getName() != "") {
			s.insertResume(r);
		}
		return "resume";
	}

	public String resumeView(@RequestParam("userId") String userId, Model d) {
		if (userId != null && userId != "")
			d.addAttribute("resume", s.oneResume(userId));
		return "resume";
	}

}
