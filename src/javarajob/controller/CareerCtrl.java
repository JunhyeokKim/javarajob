package javarajob.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.vo.Career;
import javarajob.vo.Career_Sch;
import javarajob.vo.Company;
import javarajob.vo.Company_Sch;
import oracle.sql.DATE;

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
		int totCareerCnt=0;
		ArrayList<Company> compList=new ArrayList<>();
		for (Company company : compService.listCompany(compSch)) {
			careerSch.setCompanyid(company.getCompanyid());
			ArrayList<Career> careers=careerService.listCareer(careerSch);  
			company.setCareers(careers);
			totCareerCnt+=careers.size();
			compList.add(company);
		}
		System.out.println(compService.listCompany(compSch).size());
		d.addAttribute("companyList",compList);
		d.addAttribute("careerCnt",totCareerCnt );
		//d.addAttribute("careerList",careerService.listCareer(careerSch));
		return "job-list";
	}
	@RequestMapping(params="method=job-detail")
	public String getCompanyInfo(@RequestParam(value="companyid")int companyid, Model d){
		Company dto = compService.getCompany(companyid);
		Career_Sch sch = new Career_Sch();
		sch.setCompanyid(companyid);
		dto.setCareers(careerService.listCareer(sch));
		d.addAttribute("company", dto);
		return "ajaxJobSearch";
	}
	
	
	
}
