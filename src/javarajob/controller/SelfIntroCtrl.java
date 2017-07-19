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
	public String selfView(@RequestParam("userId") String userId, Model d) {
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
			@RequestParam("count") int count, Model d) {
		System.out.println("file name:"+docu.getOriginalFilename());
		s.uploadDoc(docu, sd, count);
		return "forward:/self_intro.do?method=view&userId=" + sd.getUserId();
	}
	@ResponseBody
	@RequestMapping(params = "method=delete", method = RequestMethod.POST)
	public String delSelfIntro(@ModelAttribute("docuMulti") SelfDocuMulti del, HttpSession session) {
		if(del.getUserId()==null)
			del.setUserId((String)session.getAttribute("id"));
		s.delSelfIntro(del);
		return "forward:/self_intro.do?method=view&userid=" + del.getUserId();
	}
	@RequestMapping(params = "method=download", method = RequestMethod.POST)
	public ModelAndView download(@RequestParam(value="fileName")String fileName, HttpSession session) {
		SelfDocument down= new SelfDocument();
		down.setUserId((String)session.getAttribute("id"));
		down.setFileName(fileName);
		System.out.println("파일명:" + down.getFileName());
		// return new ModelAndView("b01_board/a01_list","list",new Board());
		File f = s.getFile(down);
		// View model 파일..
		return new ModelAndView("downloadResolver", "downloadFile", f);
	}
	
}
