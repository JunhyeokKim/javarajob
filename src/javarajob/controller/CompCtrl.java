package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javarajob.service.CompService;
import javarajob.vo.Company_Sch;

@Controller
public class CompCtrl {

	@Autowired(required = false)
	private CompService s;

	// http://localhost:6080/javarajob/testing.do
	@RequestMapping("/testing.do")
	public String list(@ModelAttribute("compSch") Company_Sch sch, Model d){
		d.addAttribute("companyList", s.listCompany(sch));
		return "";
	}
}
