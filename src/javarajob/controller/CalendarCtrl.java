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
	@Autowired(required = false)
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
		if (schElement.getField() == null || schElement.getCompanytype() == null
				|| schElement.getEmploymenttype() == null || schElement.getIndustry() == null
				|| schElement.getLocation() == null) {
			mav.addObject("companys", companys);
			return mav;
		} else {
			ArrayList<SchElement> schElementList = schService.schQuery(schElement);
			schService.getCompanys(schElement);
			// ��� ���� ���� ��ó��
			for (SchElement element : schElementList) {
				Career careerVo = careerService.getCareer(element.getCareerid());
				// ������ ȸ�� ���� ����鿡 ���Ͽ� ���� ���� ��������ϰ� ���� ���� ���� �������� �����Ѵ�
				if (companys.containsKey(String.valueOf(careerVo.getCompanyid()))) {
					Company prevComp = companys.get(String.valueOf(element.getCompanyid()));
					Date postdate = prevComp.getFirstpostdate();
					Date enddate = prevComp.getLastenddate();
					if (postdate.after(careerVo.getPostdate())) {
						postdate = careerVo.getPostdate();
					}
					if (enddate.before(careerVo.getEnddate())) {
						enddate = careerVo.getEnddate();
					}
					prevComp.setFirstpostdate(postdate);
					prevComp.setLastenddate(enddate);
					prevComp.getFields().add(careerVo.getField());
					companys.put(String.valueOf(careerVo.getCompanyid()), prevComp);
				} else {
					Company vo = compService.getCompany(careerVo.getCompanyid());
					vo.setFirstpostdate(careerVo.getPostdate());
					vo.setLastenddate(careerVo.getEnddate());
					vo.setFields(new ArrayList<Integer>());
					vo.getFields().add(careerVo.getField());
					companys.put(String.valueOf(careerVo.getCompanyid()), vo);
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

}
