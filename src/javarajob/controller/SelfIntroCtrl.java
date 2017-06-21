package javarajob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SelfIntroCtrl {
	
	@RequestMapping("/self_intro.do")
	public String selfView(){
		return "self_introduction";
	}
}
