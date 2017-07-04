package javarajob.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javarajob.service.A01_BoardService;
import javarajob.service.CareerService;
import javarajob.service.CompService;
import javarajob.service.ResumeService;
import javarajob.vo.Board;
import javarajob.vo.Board_Sch;
import javarajob.vo.Company_Sch;

@Controller
@RequestMapping("/boardList.do")
@SessionAttributes("boardSch")
public class QandaCtrl {
	@Autowired(required=false)
	private A01_BoardService service;
	
	@Autowired(required = false)
	private CompService s;
	
	@Autowired(required=false)
	CareerService careerService;
	
	@Autowired(required = false)
	private ResumeService rs;
	
	@ModelAttribute("boardSch")
	public Board_Sch Board_Sch(){
		return new Board_Sch();
	}
	
	// °Ô½ÃÆÇ list
	// http://localhost:6080/springweb/boardList.do?method=list
	@RequestMapping(params="method=list")
	public String start(@ModelAttribute("boardSch") Board_Sch sch, Model d, HttpSession ses){
		d.addAttribute("list", service.listBoard(sch));
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("resume", rs.oneResume((ses.getAttribute("id").toString())));
		//System.out.println("dc getCount()"+sch.getCount()+"getPageSize()"+sch.getPageSize()+"getCurPage()"+sch.getCurPage()+"getStart()"+sch.getStart()+"getEnd()"+sch.getEnd());
		return "qanda";
	}
	
	@RequestMapping(params="method=insert")
	public String insert(@RequestParam(value="no", defaultValue="0") int no, Model d, HttpSession ses){
		d.addAttribute("board", service.getReBoard(no));
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("resume", rs.oneResume((ses.getAttribute("id").toString())));
		Company_Sch sch = null;
		d.addAttribute("companyList", s.listCompany(sch));		
		
		return "qanda2";
	}
	
	@RequestMapping(params="method=insProc")
	public String insertProc(Board ins, HttpSession ses, Model d){
		service.insertBoard(ins);
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("resume", rs.oneResume((ses.getAttribute("id").toString())));
		return "redirect:/boardList.do?method=list";
	}
	
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("no") int no, Model d, HttpSession ses){
		d.addAttribute("board", service.detailBoard(no));
		Company_Sch sch = null;
		d.addAttribute("companyList", s.listCompany(sch));
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("resume", rs.oneResume((ses.getAttribute("id").toString())));
		return "qanda3";
	}
	
	@RequestMapping(params="method=delete")
	public String delete(@RequestParam(value="no", defaultValue="0") int no, HttpSession ses, Model d){
		service.deleteBoard(no);
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("resume", rs.oneResume((ses.getAttribute("id").toString())));
		return "redirect:/boardList.do?method=list";
	}
	
	@RequestMapping(params="method=update")
	public String update(Board ins, HttpSession ses, Model d){		
		service.updateBoard(ins);
		d.addAttribute("careerFavCount", careerService.getFavCount(ses.getAttribute("id").toString()));
		d.addAttribute("resume", rs.oneResume((ses.getAttribute("id").toString())));
		return "redirect:/boardList.do?method=list";
	}
}
