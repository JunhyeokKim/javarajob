package javarajob.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorCtrl {
	@RequestMapping(value="/error/error500")
	public String error500(HttpServletRequest request, Model d){
		d.addAttribute("msg","error 발생");
		return "/error/error500";
		
	}
	@RequestMapping(value="/error/error404")
	public String error404(HttpServletRequest request, Model d){
		d.addAttribute("msg","error 발생");
		return "/error/error404";
		
	}
	
	
	
}
