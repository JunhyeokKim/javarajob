package javarajob.controller;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.vo.Career;
import javarajob.vo.Career_Sch;
import javarajob.vo.Company_Sch;
import oracle.sql.DATE;

@Controller
@RequestMapping("/calendar.do")
public class CalendarCtrl {

	@Autowired(required = false)
	CareerService careerService;
	public Date date;
	
	@RequestMapping(params="method=init")
	public String initView(){
		return "job-calendar";
	}
	
	@RequestMapping(params="method=call")
	public @ResponseBody ArrayList<Career> call(@RequestParam(value="month", defaultValue="gg")String month){
		System.out.println(month);
		Career_Sch sch= new Career_Sch();
		ArrayList<Career> careers=careerService.listCareer(sch);
		return careers;
	}
}
