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
            @RequestParam(value = "querytype", defaultValue = "���� �˻�") String queryType,
            @RequestParam(value = "orderby", defaultValue = "desc") String orderBy,
            @ModelAttribute("schElement") SchElement schElement, Model d) {
        HashMap<String, Company> companys = new HashMap<>();
        ArrayList<SchElement> queryResult = null;
        ArrayList<FavCompany> favCompList = new ArrayList<>();
        String curId = (String) session.getAttribute("id");

        // �˻� ������ ���� query ������ �ٸ��� ��
        queryType = queryType.trim();
        query = query.trim();
        if (queryType.equals("���� �˻�")) {
            schElement.setCompanyname(query);
            schElement.setTitle(query);
        } else if (queryType.equals("ä�� ����")) {
            schElement.setCompanyname(null);
            schElement.setTitle(query);
        } else if (queryType.equals("�����")) {
            schElement.setCompanyname(query);
            schElement.setTitle(null);
        }
        if(orderBy.equals("rescent")){
        	schElement.setOrderby(0);
        }else if(orderBy.equals("bookmark")){
        	schElement.setOrderby(1);
        }
        // �������� id�� ���� ��� ����Ʈ�� �޾ƿ�
        if (curId != null && !curId.equals("")) {
            favCompList = favCompService.favCompanyList(curId);
        }
        // NUMBER_OF_ITEMS ������ ������ŭ �����͸� service�� ���� �о��
        queryResult = service.schQuery(schElement, NUMBER_OF_ITEMS);
        // ���� ��� �˻��� company ���
        ArrayList<Company> relatedCompanys = service.getCompanys(schElement);
        // �� company vo ��ü�� ���� ��ó��
        for (Company company : relatedCompanys) {
            companys.put(String.valueOf(company.getCompanyid()), company);
            for (FavCompany favCompany : favCompList) {
                if (favCompany.getCompanyid() == company.getCompanyid()) {
                    company.setBookmarked(true);
                }
            }

        }
        // ��ü �˻� ����� ���Ͽ� companys map ��ü�� companyid�� ������ company ��ü�� �ִ� ���,
        // company�� careers ��ü(ArrayList)�� career�� �߰�
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

    // ajax �񵿱� ��� ��û ó��(�� ����� ä������)
    @RequestMapping(params = "method=job-detail")
    public String getCompanyInfo(@RequestParam(value = "companyid", defaultValue = "-1") int companyid,
            HttpSession session, Model d) {
        Company company = compService.getCompany(companyid);
        Career_Sch sch = new Career_Sch();
        sch.setCompanyid(companyid);
        ArrayList<Career> careers = careerService.listCareer(sch);
        // �α��� ������ ���, ���� ���� ����� �߰��Ѵ�
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

    // ajax �񵿱� ����� ���� bookmark ��û ó��( ä�� ���� ���� �ϸ�ũ �߰� ó��)
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
            System.out.println("�α׾ƿ� �����Դϴ�.");
        }
        return "redirect:careerlist.do?method=sch";
    }

    // ajax �񵿱� ����� ���� bookmark ��û ó��( ä�� ���� ���� �ϸ�ũ ���� ó��)
    @RequestMapping(params = { "target=career", "method=rmBookmark" })
    public String removeCareerBookmark(@RequestParam(value = "index") int careerid, HttpSession session) {
        FavCareer vo = new FavCareer();
        String curId = (String) session.getAttribute("id");
        vo.setCareerid(careerid);
        vo.setId(curId);
        favCareerService.removeFavCareer(careerid);
        return "redirect:careerlist.do?method=sch";
    }

    // ajax �񵿱� ����� ���� bookmark ��û ó��( ����� ���� �ϸ�ũ �߰� ó��)
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

    // ajax �񵿱� ����� ���� bookmark ��û ó��( ����� ���� �ϸ�ũ ���� ó��)
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
