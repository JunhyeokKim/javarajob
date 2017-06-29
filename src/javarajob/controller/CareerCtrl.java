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

import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.service.SchElementService;
import javarajob.vo.Career;
import javarajob.vo.Career_Sch;
import javarajob.vo.Company;
import javarajob.vo.SchElement;

@Controller
@RequestMapping("/careerlist.do")
public class CareerCtrl {
	@Autowired(required = false)
	SchElementService service;
	@Autowired(required = false)
	CompService compService;
	@Autowired(required = false)
	CareerService careerService;

	@ModelAttribute("schElement")
	public SchElement schElement() {
		return new SchElement();
	}

	final static int NUMBER_OF_ITEMS = 2;

	@RequestMapping(params = "method=sch")
	public String listCareers(@RequestParam(value = "query", defaultValue = "") String query,
			@RequestParam(value = "querytype", defaultValue = "통합 검색") String queryType,
			@ModelAttribute("schElement") SchElement schElement,
			@RequestParam(value = "orderby", defaultValue = "desc") String orderby, Model d) {
		ArrayList<Career> totCareerList = new ArrayList<>();
		HashMap<String, Company> companys = new HashMap<>();
		ArrayList<SchElement> queryResult = null;

		Descending<Career> descOrderObj = new Descending<>();
		AscendingCareer AscOrderObj = new AscendingCareer();
		queryType = queryType.trim();
		query = query.trim();

		System.out.println("querytype: " + queryType);
		System.out.println("query: " + query);
		if (queryType.equals("통합 검색")) {
			schElement.setCompanyname(query);
			schElement.setTitle(query);
		} else if (queryType.equals("채용 공고")) {
			schElement.setCompanyname(null);
			schElement.setTitle(query);
		} else if (queryType.equals("기업명")) {
			schElement.setCompanyname(query);
			schElement.setTitle(null);
		}
		queryResult = service.schQuery(schElement,NUMBER_OF_ITEMS);
		ArrayList<Company> exp= service.getCompanys(schElement);
		for (Company company : exp) {
			companys.put(String.valueOf(company.getCompanyid()), company);
		}
		for (SchElement element : queryResult) {
			if (companys.containsKey(String.valueOf(element.getCompanyid()))) {
				if (companys.get(String.valueOf(element.getCompanyid())).getCareers() == null) {
					companys.get(String.valueOf(element.getCompanyid())).setCareers(new ArrayList<Career>());
				}
				companys.get(String.valueOf(element.getCompanyid())).getCareers()
						.add(careerService.getCareer(element.getCareerid()));
			}
		}

		// TODO: orderby 구현
		if (orderby.equals("desc")) {
			Collections.sort(totCareerList, descOrderObj);
		} else if (orderby.equals("asc")) {
			Collections.sort(totCareerList, AscOrderObj);
		}
		d.addAttribute("companyMap", companys);
		d.addAttribute("totCareerCnt", queryResult.size());
		d.addAttribute("totCompanyCnt", companys.size());
		d.addAttribute("queType", queryType);
		return "job-list";
	}

	@RequestMapping(params = "method=job-detail")
	public String getCompanyInfo(@RequestParam(value = "companyid", defaultValue = "-1") int companyid,
			HttpSession session, Model d) {
		Company company = compService.getCompany(companyid);
		Career_Sch sch = new Career_Sch();
		sch.setCompanyid(companyid);
		ArrayList<Career> careers = careerService.listCareer(sch);
		if (careers != null) {
			company.setCareers(careers);
		} else {
			System.out.println("no matching company");
		}
		d.addAttribute("company", company);

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
