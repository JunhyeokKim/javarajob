package javarajob.d01_board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import javarajob.d01_board.service.A01_MemberService;
import javarajob.d01_board.vo.Board_Sch;
import javarajob.d01_board.vo.JavarajobMember;
import javarajob.d01_board.vo.Member_Sch;


@Controller
@RequestMapping("/memberList.do")
public class A01_MemberCtrl {
	@Autowired(required=false)
	private A01_MemberService service;
		
	@RequestMapping(params="method=list")
	public String start(@ModelAttribute("memsch") Member_Sch sch, Model d){
		d.addAttribute("list", service.listMember(sch));
		return "d01_board/memberList";
	}
	
	

	
	@RequestMapping(params="method=insProc")
	public String insertProc(JavarajobMember mem){
		service.insertMember(mem);
		return "redirect:/memberList.do?method=list";
	}
	

}
