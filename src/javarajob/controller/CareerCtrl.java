package javarajob.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.vo.Career_Sch;
import javarajob.vo.Company;
import javarajob.vo.Company_Sch;

@Controller
@RequestMapping("/job-list.do")
public class CareerCtrl {
	@Autowired(required=false)
	CareerService careerService;
	@Autowired(required=false)
	CompService compService;
	
	@RequestMapping(params="method=list")
	public String listCareers(@ModelAttribute("careerSch")Career_Sch careerSch, @ModelAttribute("companySch")Company_Sch compSch, Model d){
		/*for (Career career: careerService.listCareer(careerSch)) {
			System.out.println(career.getTitle());
		}*/
		ArrayList<Company> compList=new ArrayList<>();
		for (Company company : compService.listCompany(compSch)) {
			careerSch.setCompanyid(company.getCompanyid());
			company.setCareers(careerService.listCareer(careerSch));
			compList.add(company);
		}
		System.out.println(compService.listCompany(compSch).size());
		d.addAttribute("companyList",compList);
		//d.addAttribute("careerList",careerService.listCareer(careerSch));
		return "job-list";
	}
	@RequestMapping(params="method=job-detail")
	public String getCompanyInfo(){
		System.out.println("Á¢¼Ó");
		return "ajaxTest";
	}
	
	
	
}
