package javarajob.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javarajob.service.AccountService;
import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.service.FavCareerService;
import javarajob.service.FavCompanyService;
import javarajob.service.FileService;
import javarajob.service.ResumeService;
import javarajob.vo.Account;
import javarajob.vo.Account_Sch;
import javarajob.vo.FavCareer;
import javarajob.vo.FavCompany;

@Controller
@RequestMapping("/account.do")
public class AccountCtrl {
	@Autowired(required = false)
	private AccountService service;

	@Autowired(required = false)
	private FileService fService;

	@Autowired(required = false)
	private ResumeService resService;

	@Autowired(required = false)
	private CareerService careerService;
	
	@Autowired(required = false)
	private CompService comps;
	
	@Autowired(required = false)
	private FavCompanyService favCompService;
	@Autowired(required = false)
	private FavCareerService favCareerService;

	@RequestMapping(params = "method=list")
	public String start(@ModelAttribute("memsch") Account_Sch sch, Model d) {
		d.addAttribute("list", service.listMember(sch));
		return "account/accountList";
	}

	@RequestMapping(params = "method=insProc")
	public String insertProc(Account mem) {
		service.insertMember(mem);
		service.insertResume(mem);
		return "redirect:/index.do";
	}

	@RequestMapping(params = "method=detail")
	public String detail(@RequestParam("id") String id, Model d) {

		d.addAttribute("mem", service.getMember(id));
		return "account/accountDetail";
	}

	@RequestMapping(params = "method=uptProc")
	public String uptProc(Account mem) {
		service.updateMember(mem);
		return "redirect:/account.do?method=list";
	}

	@RequestMapping(params = "method=signIn")
	public String login(@RequestParam("id") String id, @RequestParam("password") String password, HttpSession ses) {
		if (service.loginMember(id, password))
			ses.setAttribute("id", id);
		return "redirect:/index.do";
	}

	@RequestMapping(params = "method=signOut")
	public String logout(HttpSession ses) {
		ses.invalidate();
		return "redirect:/index.do";
	}

	@RequestMapping(params = "method=uptProcGuest1")
	public String uptProcGuest1(HttpSession ses, Model d) {
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		d.addAttribute("resume", resService.oneResume(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCountCompany", careerService.getFavCountCompany(ses.getAttribute("id").toString()));
		return "profile-details";
	}

	@RequestMapping(params = "method=uptProcGuest2")
	public String uptProcGuest2(Account mem, HttpSession ses, Model d) {
		mem.setId((String)ses.getAttribute("id"));
		service.updateMember(mem);
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		d.addAttribute("resume", resService.oneResume(ses.getAttribute("id").toString()));
		return "profile-details";
	}

	@RequestMapping(params = "method=delProcGuest1")
	public String delProcGuest1(HttpSession ses, Model d) {
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		d.addAttribute("resume", resService.oneResume(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCountCompany", careerService.getFavCountCompany(ses.getAttribute("id").toString()));
		return "delete-account";
	}

	@RequestMapping(params = "method=delProcGuest2")
	public String delProcGuest2(HttpSession ses) {
		resService.delResume(ses.getAttribute("id").toString());
		fService.delAccoDocu(ses.getAttribute("id").toString());
		service.deleteMember(ses.getAttribute("id").toString());
		favCompService.removeFavCompanyAccount(ses.getAttribute("id").toString());
		favCareerService.removeFavCareerAccount(ses.getAttribute("id").toString());
		ses.invalidate();
		return "redirect:/index.do";
	}

	@RequestMapping(params = "method=isNewbie")
	public void isNewbie(HttpServletRequest req, HttpServletResponse res, ModelMap model) throws Exception {
		PrintWriter out = res.getWriter();
		System.out.println("1단계");
		try {
			// 넘어온 ID를 받는다.
			System.out.println("2단계");
			String paramId = (req.getParameter("paramId") == null) ? "" : String.valueOf(req.getParameter("paramId"));
			Account vo = new Account();
			vo.setId(paramId.trim());
			int chkPoint = service.isNewbie(vo);
			System.out.println("3단계");
			out.print(chkPoint);
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
			out.print("1");
			System.out.println("??" + e);
		}
		
	}
	
	@RequestMapping(params="bookmark")
	public String bookmark(HttpSession ses, Model d){		
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		d.addAttribute("resume", resService.oneResume(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCountCompany", careerService.getFavCountCompany(ses.getAttribute("id").toString()));
		d.addAttribute("careerList", careerService.listCareerforBookmark(ses.getAttribute("id").toString()));
		return "bookmark";
	}
	
	@RequestMapping(params="bookmarkOrderByBookmark")
	public String bookmarkOrderByBookmark(HttpSession ses, Model d){		
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		d.addAttribute("resume", resService.oneResume(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCountCompany", careerService.getFavCountCompany(ses.getAttribute("id").toString()));
		d.addAttribute("careerList", careerService.listCareerforBookmarkOrderByBookmark(ses.getAttribute("id").toString()));
		
		return "bookmark";
	}

	@RequestMapping(params = "appliedjob")
	public String appliedjob(HttpSession ses, Model d) {
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		d.addAttribute("resume", resService.oneResume(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCountCompany", careerService.getFavCountCompany(ses.getAttribute("id").toString()));
		d.addAttribute("companyList", comps.getFavCompanyList(ses.getAttribute("id").toString()));
		return "applied-job";
	}
	
	@RequestMapping(params = "bookmarkOrderByPopular")
	public String bookmarkOrderByPopular(HttpSession ses, Model d) {
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		d.addAttribute("resume", resService.oneResume(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCountCompany", careerService.getFavCountCompany(ses.getAttribute("id").toString()));
		d.addAttribute("companyList", comps.getFavCompanyListOrderByPopular(ses.getAttribute("id").toString()));
		return "applied-job";
	}
	
	// bookmark 삭제
	@RequestMapping(params = "deleteFavComp")
    public String removeCompBookmark(@RequestParam(value = "companyid") int companyid, HttpSession session) {
        FavCompany vo = new FavCompany();
        String curId = (String) session.getAttribute("id");
        vo.setCompanyid(companyid);
        vo.setId(curId);
        favCompService.removeFavCompany(vo);
        return "redirect:account.do?appliedjob";
    }
	// bookmark 삭제
	@RequestMapping(params = "deleteFavCareer")
	public String removeFavCareer(@RequestParam(value = "careerid") int careerid, HttpSession session) {
		FavCareer vo = new FavCareer();
		String curId = (String) session.getAttribute("id");
		vo.setCareerid(careerid);
		vo.setId(curId);
		favCareerService.removeFavCareer(vo);
		return "redirect:account.do?bookmark";
	}

	@RequestMapping(params = "qanda")
	public String qanda(HttpSession ses, Model d) {
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		d.addAttribute("resume", resService.oneResume(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("careerFavCountCompany", careerService.getFavCountCompany(ses.getAttribute("id").toString()));
		return "redirect:/boardList.do?method=list";
	}

}
