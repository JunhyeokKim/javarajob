package javarajob.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String listCareerforindex(Model d, HttpSession session) {
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
		return "index";
	}
}
