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
    @Autowired(required=false)
    FavCompanyService favCompService;

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
        queryResult = service.schQuery(schElement, NUMBER_OF_ITEMS);
        ArrayList<Company> exp = service.getCompanys(schElement);
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
        // 로그인 상태인 경우, 관심 공고 목록을 추가한다
        ArrayList<FavCareer> favCareers;
        String curId = (String) session.getAttribute("id");
        //favCareer
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
            favCompanys= favCompService.favCompanyList(curId);
            for (FavCompany favCompany : favCompanys) {
                if(favCompany.getCompanyid()==company.getCompanyid()){
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

    @RequestMapping(params = {"target=career","method=bookmark"})
    public String addCareerBookmark(@RequestParam(value = "index") int careerid, HttpSession session) {
        FavCareer vo = new FavCareer();
        String curId = (String) session.getAttribute("id");
        vo.setCareerid(careerid);
        vo.setId(curId);
        favCareerService.addFavCareer(vo);
        System.out.println(curId);
        return "redirect:careerlist.do?method=sch";
    }

    @RequestMapping(params = {"target=career","method=rmBookmark"})
    public String removeCareerBookmark(@RequestParam(value = "index") int careerid, HttpSession session) {
        FavCareer vo = new FavCareer();
        String curId = (String) session.getAttribute("id");
        vo.setCareerid(careerid);
        vo.setId(curId);
        favCareerService.removeFavCareer(careerid);
        return "redirect:careerlist.do?method=sch";
    }
    
    @RequestMapping(params = {"target=company","method=bookmark"})
    public String addCompBookmark(@RequestParam(value = "index") int companyid, HttpSession session) {
        FavCompany vo= new FavCompany();
        String curId = (String) session.getAttribute("id");
        vo.setCompanyid(companyid);
        vo.setId(curId);
        favCompService.addFavCompany(vo);
        System.out.println(curId);
        return "redirect:careerlist.do?method=sch";
    }
    
    @RequestMapping(params = {"target=company","method=rmBookmark"})
    public String removeCompBookmark(@RequestParam(value = "index") int companyid, HttpSession session) {
        FavCompany vo = new FavCompany();
        String curId = (String) session.getAttribute("id");
        vo.setCompanyid(companyid);
        vo.setId(curId);
        favCompService.removeFavCompany(companyid);
        return "redirect:careerlist.do?method=sch";
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
