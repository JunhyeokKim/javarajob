package javarajob.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;

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

@Controller
@RequestMapping("/careerlist.do")
public class CareerCtrl {
	@Autowired(required = false)
	CareerService careerService;
	@Autowired(required = false)
	CompService compService;

	@RequestMapping(params = "method=sch")
	public String listCareers(@RequestParam(value = "query", defaultValue = "") String query,
			@RequestParam(value = "querytype", defaultValue = "통합 검색") String queryType, Career_Sch careerSch,
			@RequestParam(value = "orderby", defaultValue = "desc") String orderby, Model d) {
		int totCareerCnt = 0;
		ArrayList<Company> dtoCompList = new ArrayList<>();
		ArrayList<Career> totCareerList = new ArrayList<>();
		HashMap<Integer, Company> companys = new HashMap<>();
		Descending<Career> descOrderObj = new Descending<>();
		AscendingCareer AscOrderObj = new AscendingCareer();
		queryType = queryType.trim();
		System.out.println("querytype: " + queryType);
		System.out.println("query: " + query);
		if (queryType.equals("채용 공고")) {
			careerSch.setTitle(query);
		} else if (queryType.equals("기업명")) {
			careerSch.setCompanyname(query);
		} else if (queryType.equals("통합 검색")) {
			careerSch.setTitle(query);
			careerSch.setCompanyname(query);
		}

		totCareerList = careerService.listCareer(careerSch);
		totCareerCnt = totCareerList.size();
		for (Career career : totCareerList) {
			if (!companys.containsKey(career.getCompanyid())) {
				Company vo = compService.getCompany(career.getCompanyid());
				vo.getCareers().add(career);
				companys.put(career.getCompanyid(), vo);
			} else {
				Company vo = companys.get(career.getCompanyid());
				vo.getCareers().add(career);
				companys.put(career.getCompanyid(), vo);
			}
		}

		for (Company company : companys.values()) {
			dtoCompList.add(company);
		}

		// TODO: orderby 구현
		if (orderby.equals("desc")) {
			Collections.sort(totCareerList, descOrderObj);
		} else if (orderby.equals("asc")) {
			Collections.sort(totCareerList, AscOrderObj);
		}
		d.addAttribute("companyList", dtoCompList);
		d.addAttribute("totCareerCnt", totCareerCnt);
		d.addAttribute("totCompanyCnt", dtoCompList.size());
		// d.addAttribute("careerList",careerService.listCareer(careerSch));
		return "job-list";
	}

	@RequestMapping(params = "method=job-detail")
	public String getCompanyInfo(@RequestParam(value = "companyid") int companyid, Model d) {
		Company dto = compService.getCompany(companyid);
		Career_Sch sch = new Career_Sch();
		sch.setCompanyid(companyid);
		dto.setCareers(careerService.listCareer(sch));
		d.addAttribute("company", dto);
		return "ajaxJobSearch";
	}

	class Descending<T> implements Comparator<T> {
		@Override
		public int compare(T o1, T o2) {
			// TODO Auto-generated method stub
			if (o1 instanceof Career && o2 instanceof Career) {
				return ((Career) o1).getPostdate().compareTo(((Career) o2).getPostdate());
			} else {
			}

			return 1;
		}

	}

	class AscendingCareer implements Comparator<Career> {
		@Override
		public int compare(Career o1, Career o2) {
			// TODO Auto-generated method stub
			return o2.getPostdate().compareTo(o1.getPostdate());
		}

	}

}
