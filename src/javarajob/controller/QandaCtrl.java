package javarajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javarajob.service.A01_BoardService;
import javarajob.vo.Board;
import javarajob.vo.Board_Sch;

@Controller
@RequestMapping("/boardList.do")
@SessionAttributes("boardsch")
public class QandaCtrl {
	@Autowired(required=false)
	private A01_BoardService service;
	
	@ModelAttribute("boardsch")
	public Board_Sch Board_Sch(){
		return new Board_Sch();
	}
	
	// °Ô½ÃÆÇ list
	// http://localhost:6080/springweb/boardList.do?method=list
	@RequestMapping(params="method=list")
	public String start(@ModelAttribute("boardsch") Board_Sch sch, Model d){
		d.addAttribute("list", service.listBoard(sch));
		return "qanda";
	}
	
	@RequestMapping(params="method=insert")
	public String insert(@RequestParam(value="no", defaultValue="0") int no, Model d){
		d.addAttribute("board", service.getReBoard(no));	
		return "d01_board/a02_insertBoard";
	}
	
	@RequestMapping(params="method=insProc")
	public String insertProc(Board ins){
		service.insertBoard(ins);
		return "redirect:/boardList.do?method=list";
	}
	
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("no") int no, Model d){
		d.addAttribute("board", service.detailBoard(no));	
		return "d01_board/a03_detailBoard";
	}
}
