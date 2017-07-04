package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javarajob.service.AccountService;
import javarajob.service.CareerService;
import javarajob.service.CompService;

@Controller
public class IndexCtrl {
	@Autowired(required=false)
	CareerService careerService;
	@Autowired(required=false)
	AccountService accountService;
	@Autowired(required=false)
	CompService companyService;
	
	@RequestMapping("/index.do")
	public String listCareerforindex(@RequestParam(value="mode", defaultValue="0") int mode, Model d){	
		d.addAttribute("careerCount", careerService.getCount());
		d.addAttribute("companyCount", companyService.getCount());
		d.addAttribute("accountCount", accountService.getCount());
		if(mode==2) d.addAttribute("careerList", careerService.listCareerforindexOrderByBookmark());
		else d.addAttribute("careerList", careerService.listCareerforindex()); 
		return "index";
	}
	@RequestMapping("/indexSelect.do")
	public String listCareerforindexSelect(@RequestParam(value="industry", defaultValue="0") int industry, Model d){		
		d.addAttribute("careerCount", careerService.getCount());
		d.addAttribute("companyCount", companyService.getCount());
		d.addAttribute("accountCount", accountService.getCount());
		d.addAttribute("careerList", careerService.listCareerforindexSelect(industry));		
		return "index";
	}
}
