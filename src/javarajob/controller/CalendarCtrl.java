package javarajob.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.service.FavCareerService;
import javarajob.service.FavCompanyService;
import javarajob.vo.Career;
import javarajob.vo.Career_Sch;
import javarajob.vo.Company;
import javarajob.vo.FavCompany;

@Controller
@RequestMapping("calendar.do")
public class CalendarCtrl {

	@Autowired(required = false)
	CareerService careerService;
	@Autowired(required = false)
	FavCareerService favCareerService;
	@Autowired(required = false)
	FavCompanyService favCompService;
	@Autowired(required = false)
	CompService compService;

	@RequestMapping(params = "method=init")
	public String initView() {
		return "job-calendar";
	}

	@RequestMapping(params = "method=companylist")
	public ModelAndView mav(@RequestParam(value = "date") String date, HttpSession session) {
		HashMap<String, Company> companys = new HashMap<>();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pageJsonReport");
		System.out.println(date);
		StringTokenizer tokenizer = new StringTokenizer(date, "-");
		LocalDate thisMonth = LocalDate.of(Integer.parseInt(tokenizer.nextToken()),
				Integer.parseInt(tokenizer.nextToken()), 1);
		System.out.println("시작: " + thisMonth);
		System.out.println("마지막: " + thisMonth.plusMonths(1).minusDays(1));
		Career_Sch sch = new Career_Sch();
		sch.setPostdate(Date.valueOf(thisMonth));
		sch.setEnddate(Date.valueOf(thisMonth.plusMonths(1).minusDays(1)));
		ArrayList<Career> careerList = careerService.listCareer(sch);
		for (Career career : careerList) {
			if (companys.containsKey(career.getCareerid())) {
				Company prevComp = companys.get(String.valueOf(career.getCompanyid()));
				Date postdate = prevComp.getFirstpostdate();
				Date enddate = prevComp.getLastenddate();
				if (postdate.after(career.getPostdate())) {
					postdate = career.getPostdate();
				}
				if (enddate.before(career.getEnddate())) {
					enddate = career.getEnddate();
				}
				prevComp.setFirstpostdate(postdate);
				prevComp.setLastenddate(enddate);
				companys.put(String.valueOf(career.getCompanyid()), prevComp);
			} else {
				Company vo = compService.getCompany(career.getCompanyid());
				vo.setFirstpostdate(career.getPostdate());
				vo.setLastenddate(career.getEnddate());
				companys.put(String.valueOf(career.getCompanyid()), vo);
			}
		}
		String curId = (String) session.getAttribute("id");
		if (curId != null && !curId.equals("")) {
			for (Company company : companys.values()) {
				FavCompany vo = new FavCompany();
				vo.setCompanyid(company.getCompanyid());
				vo.setId(curId);
				if (favCompService.getFavCompany(vo) != null) {
					company.setBookmarked(true);
				}
			}
		}
		mav.addObject("companys", companys);
		return mav;

	}
}
