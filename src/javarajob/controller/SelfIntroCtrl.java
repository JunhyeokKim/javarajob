package javarajob.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public String selfView(HttpSession session, Model d) {
		String userId= (String)session.getAttribute("id");
		s.docuView(userId);
		d.addAttribute("documents", s.docuView(userId));
		return "self_introduction";
	}
	@RequestMapping(params="method=filelist")
	public ModelAndView mav(HttpSession session){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("pageJsonReport");
		mav.addObject("filelist",s.docuView((String)session.getAttribute("id")));
		return mav;
	}


	@RequestMapping(params = "method=upload", method = RequestMethod.POST)
	public String uploadSelfIntro(@RequestParam("selfIntro") MultipartFile docu, @ModelAttribute("selfDocu") SelfDocument sd,
			@RequestParam("count") int count, Model d, HttpSession session) {
		String userId= (String)session.getAttribute("id");
		sd.setUserId(userId);
		System.out.println("file name:"+docu.getOriginalFilename());
		s.uploadDoc(docu, sd, count);
		return "forward:/self_intro.do?method=view&userId=" + userId;
	}
	@ResponseBody
	@RequestMapping(params = "method=delete", method = RequestMethod.POST)
	public String delSelfIntro(@ModelAttribute("docuMulti") SelfDocuMulti del, HttpSession session) {
		String userId= (String)session.getAttribute("id");
		del.setUserId(userId);
		s.delSelfIntro(del);
		return "forward:/self_intro.do?method=view&userid=" + del.getUserId();
	}
	@RequestMapping(params = "method=download", method = RequestMethod.POST)
	public ModelAndView download(@RequestParam(value="fileName")String fileName, HttpSession session) {
		String userId= (String)session.getAttribute("id");
		SelfDocument down= new SelfDocument();
		down.setUserId(userId);
		down.setFileName(fileName);
		System.out.println("ÆÄÀÏ¸í:" + down.getFileName());
		// return new ModelAndView("b01_board/a01_list","list",new Board());
		File f = s.getFile(down);
		// View model ÆÄÀÏ..
		return new ModelAndView("downloadResolver", "downloadFile", f);
	}
	
}