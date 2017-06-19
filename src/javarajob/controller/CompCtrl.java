package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javarajob.service.CompService;

@Controller
public class CompCtrl {

	@Autowired(required = false)
	private CompService s;
	
	@RequestMapping("/testing.do")
	public String testting(Model d){
		d.addAttribute("company", s.list());
		return "testt";
	}
}
