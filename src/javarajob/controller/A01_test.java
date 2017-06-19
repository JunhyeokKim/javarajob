package javarajob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A01_test {

	@RequestMapping("/testtt.do")
	public String testing(){
		return "testt";
	}
	
}
