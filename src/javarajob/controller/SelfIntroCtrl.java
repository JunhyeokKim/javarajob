package javarajob.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import javarajob.vo.SelfDocument;

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

	@RequestMapping(params = "method=upload", method = RequestMethod.POST)
	public String uploadSelfIntro(@RequestParam("selfIntro") MultipartFile docu, @RequestParam("userId") String id, @RequestParam int count) {
		System.out.println(count);
		s.uploadDoc(docu, id, count);
		return "forward:/self_intro.do?method=view&userId=" + id;
	}

	@RequestMapping(params = "method=delete", method = RequestMethod.POST)
	public String delSelfIntro(@ModelAttribute("docuMulti") SelfDocuMulti del) {
		s.delSelfIntro(del);
		return "forward:/self_intro.do?method=view&userid=" + del.getUserId();
	}

	@RequestMapping(params = "method=download", method = RequestMethod.POST)
	public String downloadFile(@ModelAttribute("docuDown") SelfDocument down, HttpServletRequest req,
			HttpServletResponse resp) throws IOException {
		System.out.println("id : "+down.getUserId());
		System.out.println("file : "+down.getFileName());
		s.downloadFile(down, req, resp);
		return "forward:/self_intro.do?method=view&userid=" + down.getUserId();
	}

}
