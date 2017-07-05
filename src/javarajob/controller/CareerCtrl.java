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
import javarajob.service.FavCareerService;
import javarajob.service.FavCompanyService;
import javarajob.service.SchElementService;
import javarajob.vo.Career;
import javarajob.vo.Career_Sch;
import javarajob.vo.Company;
import javarajob.vo.FavCareer;
import javarajob.vo.FavCompany;
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
    @Autowired(required = false)
    FavCareerService favCareerService;
    @Autowired(required = false)
    FavCompanyService favCompService;

    @ModelAttribute("schElement")
    public SchElement schElement() {
        return new SchElement();
    }

    final static int NUMBER_OF_ITEMS = 5;

    @RequestMapping(params = "method=sch")
    public String listCareers(HttpSession session, @RequestParam(value = "query", defaultValue = "") String query,
            @RequestParam(value = "querytype", defaultValue = "통합 검색") String queryType,
            @RequestParam(value = "orderby", defaultValue = "desc") String orderBy,
            @ModelAttribute("schElement") SchElement schElement, Model d) {
        HashMap<String, Company> companys = new HashMap<>();
        ArrayList<SchElement> queryResult = null;
        ArrayList<FavCompany> favCompList = new ArrayList<>();
        String curId = (String) session.getAttribute("id");

        // 검색 종류에 따라 query 설정을 다르게 함
        queryType = queryType.trim();
        query = query.trim();
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
        if(orderBy.equals("rescent")){
        	schElement.setOrderby(0);
        }else if(orderBy.equals("bookmark")){
        	schElement.setOrderby(1);
        }
        // 접속중인 id의 관심 기업 리스트를 받아옴
        if (curId != null && !curId.equals("")) {
            favCompList = favCompService.favCompanyList(curId);
        }
        // NUMBER_OF_ITEMS 단위의 갯수만큼 데이터를 service를 통해 읽어옴
        queryResult = service.schQuery(schElement, NUMBER_OF_ITEMS);
        // 질의 결과 검색된 company 명단
        ArrayList<Company> relatedCompanys = service.getCompanys(schElement);
        // 각 company vo 객체에 대한 전처리
        for (Company company : relatedCompanys) {
            companys.put(String.valueOf(company.getCompanyid()), company);
            for (FavCompany favCompany : favCompList) {
                if (favCompany.getCompanyid() == company.getCompanyid()) {
                    company.setBookmarked(true);
                }
            }

        }
        // 전체 검색 결과에 대하여 companys map 객체에 companyid가 동일한 company 객체가 있는 경우,
        // company의 careers 객체(ArrayList)에 career를 추가
        for (SchElement element : queryResult) {
            if (companys.containsKey(String.valueOf(element.getCompanyid()))) {
                if (companys.get(String.valueOf(element.getCompanyid())).getCareers() == null) {
                    companys.get(String.valueOf(element.getCompanyid())).setCareers(new ArrayList<Career>());
                }
                companys.get(String.valueOf(element.getCompanyid())).getCareers()
                        .add(careerService.getCareer(element.getCareerid()));
            }
        }

        d.addAttribute("companyMap", companys);
        d.addAttribute("totCareerCnt", queryResult.size());
        d.addAttribute("totCompanyCnt", companys.size());
        d.addAttribute("queType", queryType);
        d.addAttribute("query", query);
        return "job-list";
    }

    // ajax 비동기 통신 요청 처리(상세 기업의 채용정보)
    @RequestMapping(params = "method=job-detail")
    public String getCompanyInfo(@RequestParam(value = "companyid", defaultValue = "-1") int companyid,
            HttpSession session, Model d) {
        Company company = compService.getCompany(companyid);
        Career_Sch sch = new Career_Sch();
        sch.setCompanyid(companyid);
        ArrayList<Career> careers = careerService.listCareer(sch);
        // 로그인 상태인 경우, 관심 공고 목록을 추가한다
        ArrayList<FavCareer> favCareers;
        String curId = (String) session.getAttribute("id");
        // favCareer
        if (curId != null) {
            favCareers = favCareerService.favCareerList(curId);
            for (Career career : careers) {
                for (FavCareer favCareer : favCareers) {
                    if (favCareer.getCareerid() == career.getCareerid()) {
                        career.setBookmarked(true);
                    }
                }
            }
        }
        // favCompany
        ArrayList<FavCompany> favCompanys;
        if (curId != null) {
            favCompanys = favCompService.favCompanyList(curId);
            for (FavCompany favCompany : favCompanys) {
                if (favCompany.getCompanyid() == company.getCompanyid()) {
                    company.setBookmarked(true);
                }
            }
        }

        if (careers != null) {
            company.setCareers(careers);
        }

        d.addAttribute("company", company);
        return "ajaxJobSearch";
    }

    // ajax 비동기 통신을 통한 bookmark 요청 처리( 채용 공고에 대한 북마크 추가 처리)
    @RequestMapping(params = { "target=career", "method=bookmark" })
    public String addCareerBookmark(@RequestParam(value = "index") int careerid, HttpSession session) {
        FavCareer vo = new FavCareer();
        String curId = (String) session.getAttribute("id");
        if (curId != null && !curId.equals("")) {
            vo.setCareerid(careerid);
            vo.setId(curId);
            favCareerService.addFavCareer(vo);
            System.out.println(curId);
        } else {
            System.out.println("로그아웃 상태입니다.");
        }
        return "redirect:careerlist.do?method=sch";
    }

    // ajax 비동기 통신을 통한 bookmark 요청 처리( 채용 공고에 대한 북마크 제거 처리)
    @RequestMapping(params = { "target=career", "method=rmBookmark" })
    public String removeCareerBookmark(@RequestParam(value = "index") int careerid, HttpSession session) {
        FavCareer vo = new FavCareer();
        String curId = (String) session.getAttribute("id");
        vo.setCareerid(careerid);
        vo.setId(curId);
        favCareerService.removeFavCareer(careerid);
        return "redirect:careerlist.do?method=sch";
    }

    // ajax 비동기 통신을 통한 bookmark 요청 처리( 기업에 대한 북마크 추가 처리)
    @RequestMapping(params = { "target=company", "method=bookmark" })
    public String addCompBookmark(@RequestParam(value = "index") int companyid, HttpSession session) {
        FavCompany vo = new FavCompany();
        String curId = (String) session.getAttribute("id");
        vo.setCompanyid(companyid);
        vo.setId(curId);
        favCompService.addFavCompany(vo);
        System.out.println(curId);
        return "redirect:careerlist.do?method=sch";
    }

    // ajax 비동기 통신을 통한 bookmark 요청 처리( 기업에 대한 북마크 제거 처리)
    @RequestMapping(params = { "target=company", "method=rmBookmark" })
    public String removeCompBookmark(@RequestParam(value = "index") int companyid, HttpSession session) {
        FavCompany vo = new FavCompany();
        String curId = (String) session.getAttribute("id");
        vo.setCompanyid(companyid);
        vo.setId(curId);
        favCompService.removeFavCompany(companyid);
        return "redirect:careerlist.do?method=sch";
    }


}
