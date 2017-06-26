package javarajob.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javarajob.service.AccountService;
import javarajob.vo.Account;
import javarajob.vo.Account_Sch;



@Controller
@RequestMapping("/account.do")
public class AccountCtrl {
	@Autowired(required=false)
	private AccountService service;
		
	@RequestMapping(params="method=list")
	public String start(@ModelAttribute("memsch") Account_Sch sch, Model d){
		d.addAttribute("list", service.listMember(sch));
		return "account/accountList";
	}

	@RequestMapping(params="method=insProc")
	public String insertProc(Account mem){
		service.insertMember(mem);
		service.insertResume(mem);
		return "redirect:/index.do";
	}
	
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("id") String id, Model d){
		
		d.addAttribute("mem", service.getMember(id));
		return "account/accountDetail";
	}
	
	@RequestMapping(params="method=delProc")
	public String delProc(@RequestParam("id") String id){		
		service.deleteMember(id);
		return "redirect:/account.do?method=list";
	}

	@RequestMapping(params="method=uptProc")
	public String uptProc(Account mem){		
		service.updateMember(mem);
		return "redirect:/account.do?method=list";
	}
	
	@RequestMapping(params="method=signIn")
	public String login(@RequestParam("id") String id, @RequestParam("password") String password, HttpSession ses){	
		if(service.loginMember(id, password))	ses.setAttribute("id",id);			
		return "redirect:/index.do";
	}
	
	@RequestMapping(params="method=signOut")
	public String logout(HttpSession ses){	
		ses.invalidate();		
		return "redirect:/index.do";
	}
	
	@RequestMapping(params="method=uptProcGuest1")
	public String uptProcGuest1(HttpSession ses, Model d){		
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		return "profile-details";
	}
	
	@RequestMapping(params="method=uptProcGuest2")
	public String uptProcGuest2(Account mem, HttpSession ses, Model d){		
		service.updateMember(mem);
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		return "profile-details";
	}
	
	@RequestMapping(params="method=delProcGuest1")
	public String delProcGuest1(HttpSession ses, Model d){		
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		return "delete-account";
	}
	
	@RequestMapping(params="method=delProcGuest2")
	public String delProcGuest2(HttpSession ses){		
		service.deleteMember(ses.getAttribute("id").toString());
		ses.invalidate();
		return "redirect:/index.do";
	}
	
	@RequestMapping(params="bookmark")
	public String bookmark(HttpSession ses, Model d){		
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		return "bookmark";
	}
	
	@RequestMapping(params="appliedjob")
	public String appliedjob(HttpSession ses, Model d){		
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		return "applied-job";
	}
	
	@RequestMapping(params="qanda")
	public String qanda(HttpSession ses, Model d){		
		d.addAttribute("mem", service.getMember(ses.getAttribute("id").toString()));
		return "qanda";
	}
}
