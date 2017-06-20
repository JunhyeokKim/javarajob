package javarajob.controller;

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
@RequestMapping("/accountList.do")
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
		return "redirect:/accountList.do?method=list";
	}
	
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("id") String id, Model d){
		
		d.addAttribute("mem", service.getMember(id));
		
		return "account/accountDetail";
	}
	
	@RequestMapping(params="method=delProc")
	public String delProc(@RequestParam("id") String id){		
		service.deleteMember(id);
		return "redirect:/accountList.do?method=list";
	}

	@RequestMapping(params="method=uptProc")
	public String uptProc(Account mem){		
		service.updateMember(mem);
		return "redirect:/accountList.do?method=list";
	}
}
