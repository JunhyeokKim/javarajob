package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.vo.Company_Sch;

@Controller
@RequestMapping("/calendar.do")
public class CalendarCtrl {

	@Autowired(required = false)
	CareerService careerService;
	
	@RequestMapping(params="view")
	public String initView(){
		return "job-calendar";
	}
}
