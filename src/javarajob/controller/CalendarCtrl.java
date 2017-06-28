package javarajob.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.temporal.TemporalAdjusters;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javarajob.service.CareerService;
import javarajob.vo.Career_Sch;

@Controller
@RequestMapping("calendar.do")
public class CalendarCtrl {

	@Autowired(required = false)
	CareerService careerService;
	
	@RequestMapping(params="method=init")
	public String initView(){
		return "job-calendar";
	}
	
	@RequestMapping(params="method=careerList")
	public ModelAndView mav(@RequestParam(value="date") String date){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("pageJsonReport");
		System.out.println(date);
		StringTokenizer tokenizer= new StringTokenizer(date, "-");
		LocalDate thisMonth= LocalDate.of(Integer.parseInt(tokenizer.nextToken()), Integer.parseInt(tokenizer.nextToken()),1);
		System.out.println("시작: "+thisMonth);
		System.out.println("마지막: "+thisMonth.plusMonths(1).minusDays(1));
		Career_Sch sch= new Career_Sch();
		sch.setPostdate(Date.valueOf(thisMonth));
		sch.setEnddate(Date.valueOf(thisMonth.plusMonths(1).minusDays(1)));
		mav.addObject("careers",careerService.listCareer(sch));
		return mav;
	}
}
