package javarajob.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.vo.Career;
import javarajob.vo.Career_Sch;
import javarajob.vo.Company;

@Controller
@RequestMapping("/careerlist.do")
@SessionAttributes("careerSch")
public class CareerCtrl {
	@Autowired(required = false)
	CareerService careerService;
	@Autowired(required = false)
	CompService compService;
	@ModelAttribute("careerSch")
	public Career_Sch Career_sch(){
		return new Career_Sch();
	}

	@RequestMapping(params = "method=sch")
	public String listCareers(HttpSession session, @RequestParam(value = "query", defaultValue = "") String query,
			@RequestParam(value = "querytype", defaultValue = "통합 검색") String queryType, @ModelAttribute("careerSch")Career_Sch careerSch,
			@RequestParam(value = "orderby", defaultValue = "desc") String orderby, @RequestParam(value="page", defaultValue="1") int page, Model d) {
		int totCareerCnt = 0;
		ArrayList<Company> dtoCompList = new ArrayList<>();
		ArrayList<Career> totCareerList = new ArrayList<>();
		HashMap<String, Company> companys = new HashMap<>();
		Descending<Career> descOrderObj = new Descending<>();
		AscendingCareer AscOrderObj = new AscendingCareer();
		queryType = queryType.trim();
		query = query.trim();
		System.out.println("querytype: " + queryType);
		System.out.println("query: " + query);
		if (queryType.equals("통합 검색")) {
			careerSch.setCompanyname(query);
			careerSch.setTitle(query);
		} else if (queryType.equals("채용 공고")) {
			careerSch.setTitle(query);
		} else if (queryType.equals("기업명")) {
			careerSch.setCompanyname(query);
		}

		totCareerList = careerService.listCareer(careerSch);
		totCareerCnt = totCareerList.size();
		for (Career career : totCareerList) {
			// TODO: paging 처리는 controller에서 하면 될듯
			if(companys.size()>2)
				break;
			if (!companys.containsKey(String.valueOf(career.getCompanyid()))) {
				Company vo = compService.getCompany(career.getCompanyid());
				ArrayList<Career> allocCareers = new ArrayList<>();
				allocCareers.add(career);
				vo.setCareers(allocCareers);
				companys.put(String.valueOf(career.getCompanyid()), vo);
			} else {
				Company vo = companys.get(String.valueOf(career.getCompanyid()));
				vo.getCareers().add(career);
				companys.put(String.valueOf(career.getCompanyid()), vo);
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
		session.setAttribute("companyMap", companys);
		d.addAttribute("totCareerCnt", totCareerCnt);
		d.addAttribute("totCompanyCnt", dtoCompList.size());
		d.addAttribute("queType",queryType);
		// d.addAttribute("careerList",careerService.listCareer(careerSch));
		return "job-list";
	}

	@RequestMapping(params = "method=job-detail")
	public String getCompanyInfo(@RequestParam(value = "companyid", defaultValue = "-1") int companyid,
			HttpSession session, Model d) {
		@SuppressWarnings("unchecked")
		HashMap<String, Company> companyMap = (HashMap<String, Company>) session.getAttribute("companyMap");
		d.addAttribute("company", companyMap.get(String.valueOf(companyid)));
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
