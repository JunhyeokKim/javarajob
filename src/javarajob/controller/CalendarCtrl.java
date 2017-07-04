package javarajob.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.service.FavCareerService;
import javarajob.service.FavCompanyService;
import javarajob.vo.Career;
import javarajob.vo.Career_Sch;
import javarajob.vo.Company;
import javarajob.vo.FavCompany;

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

    @RequestMapping(params = "method=init")
    public String initView() {
        return "job-calendar";
    }

    // calendar onload 시 호출되는 채용 공고에 대한 ajax 요청을 처리, ModelAndView 객체를 통해 json
    // type으로 결과를 return
    @RequestMapping(params = "method=companylist")
    public ModelAndView mav(@RequestParam(value = "date") String date, HttpSession session) {
        HashMap<String, Company> companys = new HashMap<>();
        ModelAndView mav = new ModelAndView();
        // mav의 viewResolver를 설정한다. PageJsonReport는 Json에 대한 viewResolver이다
        mav.setViewName("pageJsonReport");
        // date의 delimeter로 '-'를 지정. 년, 월, 일을 구분한다. 
        StringTokenizer tokenizer = new StringTokenizer(date, "-");
        LocalDate thisMonth = LocalDate.of(Integer.parseInt(tokenizer.nextToken()),
                Integer.parseInt(tokenizer.nextToken()), 1);
        // 매달 첫째일과 마지막일 까지의 채용 공고를 검색한다. 
        Career_Sch sch = new Career_Sch();
        sch.setPostdate(Date.valueOf(thisMonth));
        sch.setEnddate(Date.valueOf(thisMonth.plusMonths(1).minusDays(1)));
        ArrayList<Career> careerList = careerService.listCareer(sch);
        
        // 모든 공고에 대한 전처리
        for (Career career : careerList) {
            // 동일한 회사 내의 공고들에 대하여 가장 빠른 공고시작일과 가장 늦은 공고 종료일을 설정한다
            if (companys.containsKey(career.getCareerid())) {
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
                companys.put(String.valueOf(career.getCompanyid()), prevComp);
            } else {
                Company vo = compService.getCompany(career.getCompanyid());
                vo.setFirstpostdate(career.getPostdate());
                vo.setLastenddate(career.getEnddate());
                companys.put(String.valueOf(career.getCompanyid()), vo);
            }
        }
        // 로그인 상태일 경우 북마크 설정한 기업 list를 불러옴
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
