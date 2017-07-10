package javarajob.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.service.FavCareerService;
import javarajob.service.FavCompanyService;
import javarajob.service.SchElementService;
import javarajob.vo.Career;
import javarajob.vo.Career_Sch;
import javarajob.vo.Company;
import javarajob.vo.FavCompany;
import javarajob.vo.SchElement;

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
	@Autowired(required=false)
	SchElementService schService;

	@ModelAttribute("schElement")
	public SchElement schElement() {
		return new SchElement();
	}

	@RequestMapping(params = "method=init")
	public String initView() {
		return "job-calendar";
	}

	// calendar onload �� ȣ��Ǵ� ä�� ���� ���� ajax ��û�� ó��, ModelAndView ��ü�� ���� json
	// type���� ����� return
	@RequestMapping(params = "method=companylist")
	public ModelAndView mav(@RequestParam(value = "date") String date, HttpSession session,
			@ModelAttribute("schElement") SchElement schElement) {
		HashMap<String, Company> companys = new HashMap<>();
		ModelAndView mav = new ModelAndView();
		// mav�� viewResolver�� �����Ѵ�. PageJsonReport�� Json�� ���� viewResolver�̴�.
		mav.setViewName("pageJsonReport");
		// date�� delimeter�� '-'�� ����. ��, ��, ���� �����Ѵ�.
		StringTokenizer tokenizer = new StringTokenizer(date, "-");
		LocalDate thisMonth = LocalDate.of(Integer.parseInt(tokenizer.nextToken()),
				Integer.parseInt(tokenizer.nextToken()), 1);
		// �Ŵ� ù°�ϰ� �������� ������ ä�� ���� �˻��Ѵ�.
		schElement.setPostdate(Date.valueOf(thisMonth));
		schElement.setEnddate(Date.valueOf(thisMonth.plusMonths(1).minusDays(1)));
		ArrayList<Career> careerList = schService.

		// ��� ���� ���� ��ó��
		for (Career career : careerList) {
			// ������ ȸ�� ���� ����鿡 ���Ͽ� ���� ���� ��������ϰ� ���� ���� ���� �������� �����Ѵ�
			if (companys.containsKey(String.valueOf(career.getCompanyid()))) {
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
				prevComp.getFields().add(career.getField());
				companys.put(String.valueOf(career.getCompanyid()), prevComp);
			} else {
				Company vo = compService.getCompany(career.getCompanyid());
				vo.setFirstpostdate(career.getPostdate());
				vo.setLastenddate(career.getEnddate());
				vo.setFields(new ArrayList<Integer>());
				vo.getFields().add(career.getField());
				companys.put(String.valueOf(career.getCompanyid()), vo);
			}
		}
		// �α��� ������ ��� �ϸ�ũ ������ ��� list�� �ҷ���
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
