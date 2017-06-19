package javarajob.d01_board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javarajob.d01_board.service.A01_BoardService;
import javarajob.d01_board.vo.Board;
import javarajob.d01_board.vo.Board_Sch;

@Controller
@RequestMapping("/boardList.do")
public class A01_BoardCtrl {
	@Autowired(required=false)
	private A01_BoardService service;
	
	// °Ô½ÃÆÇ list
	// http://localhost:6080/springweb/boardList.do?method=list
	@RequestMapping(params="method=list")
	public String start(@ModelAttribute("empsch") Board_Sch sch, Model d){
		d.addAttribute("list", service.listBoard(sch));
		return "d01_board/a01_boardList";
	}
	
	@RequestMapping(params="method=insert")
	public String insert(){
		return "d01_board/a02_insertBoard";
	}
	
	@RequestMapping(params="method=insProc")
	public String insertProc(Board ins){
		service.insertBoard(ins);
		return "redirect:/boardList.do?method=list";
	}
	

}
