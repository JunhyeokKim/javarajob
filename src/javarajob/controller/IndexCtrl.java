package javarajob.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javarajob.service.AccountService;
import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.service.FavCareerService;
import javarajob.vo.Career;
import javarajob.vo.FavCareer;

@Controller
public class IndexCtrl {
	@Autowired(required = false)
	CareerService careerService;
	@Autowired(required = false)
	AccountService accountService;
	@Autowired(required = false)
	CompService companyService;
	@Autowired(required=false)
	FavCareerService favCareerService;

	@RequestMapping("/index.do")
		
	public String listCareerforindex(HttpSession session,@RequestParam(value="mode", defaultValue="0") int mode, Model d){	
ArrayList<Career> topCareers=careerService.listCareerforindex();
ArrayList<FavCareer> favCareers;
String curId = (String) session.getAttribute("id");
// favCareer
if (curId != null) {
	favCareers = favCareerService.favCareerList(curId);
	for (Career career : topCareers) {
		for (FavCareer favCareer : favCareers) {
			if (favCareer.getCareerid() == career.getCareerid()) {
				career.setBookmarked(true);
			}
		}
	}
}
		d.addAttribute("careerCount", careerService.getCount());
		d.addAttribute("companyCount", companyService.getCount());
		d.addAttribute("accountCount", accountService.getCount());
		d.addAttribute("careerList", topCareers);
		if(mode==2) d.addAttribute("careerList", careerService.listCareerforindexOrderByBookmark());
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
