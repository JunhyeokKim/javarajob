package javarajob.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javarajob.service.FileService;
import javarajob.vo.SelfDocuMulti;
import javarajob.vo.SelfDocument;

@Controller
@RequestMapping("/self_intro.do")
public class SelfIntroCtrl {

	@Autowired(required = false)
	private FileService s;

	@RequestMapping(params = "method=view")
	public String selfView(@RequestParam("userId") String userId, Model d) {
		s.docuView(userId);
		d.addAttribute("documents", s.docuView(userId));
		return "self_introduction";
	}

	@RequestMapping(params = "method=upload", method = RequestMethod.POST)
	public String uploadSelfIntro(@RequestParam("selfIntro") MultipartFile docu, @ModelAttribute("selfDocu") SelfDocument sd,
			@RequestParam("count") int count, Model d) {
		s.uploadDoc(docu, sd, count);
		return "forward:/self_intro.do?method=view&userId=" + sd.getUserId();
	}

	@RequestMapping(params = "method=delete", method = RequestMethod.POST)
	public String delSelfIntro(@ModelAttribute("docuMulti") SelfDocuMulti del) {
		s.delSelfIntro(del);
		return "forward:/self_intro.do?method=view&userid=" + del.getUserId();
	}

	@RequestMapping(params = "method=download", method = RequestMethod.POST)
	public ModelAndView download(@ModelAttribute("docuDown") SelfDocument down) {
		System.out.println("파일명:" + down.getFileName());
		// return new ModelAndView("b01_board/a01_list","list",new Board());

		File f = s.getFile(down);
		// View model 파일..
		return new ModelAndView("downloadResolver", "downloadFile", f);
	}
	
}
