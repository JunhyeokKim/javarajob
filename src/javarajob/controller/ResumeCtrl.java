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
	public String resumeView(@RequestParam(value = "id", defaultValue = "0") String id, Model d) {
		Resume r = null;
		if (!id.equals("0")) {
			r = s.oneResume(id);
			d.addAttribute("resume", r);
			s.uptResume(r);
		}
		return "resume";
	}

}
