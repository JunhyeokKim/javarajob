package javarajob.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.repository.A01_BoardDao;
import javarajob.vo.Board;
import javarajob.vo.Board_Sch;

@Service
public class A01_BoardService {
	@Autowired(required=false)
	private A01_BoardDao dao;
	
	public void insertBoard(Board ins){
		dao.insertBoard(ins);
	}
	
	public ArrayList<Board> listBoard(Board_Sch sch){
		return dao.listBoard(sch);
	}
	
	public Board getBoard(int no){
		return dao.getBoard(no);
	}

	public Board detailBoard(int no){
		// readCount를 update 처리..
		dao.uptBoardCnt(no);
		
		// 하나의 데이터를 가져올 부분
		return getBoard(no);
	}
	
	public Board getReBoard(int no){
		Board reboard = null;
		// 초기등록화면
		if(no==0){
			reboard = new Board();
		// 답글등록화면
		}else{
			reboard = dao.getBoard(no);
			reboard.setRefno(no);
			reboard.setSubject("RE : "+reboard.getSubject());
			reboard.setContent("\n\n\n\n=====이전내용=====\n\n\n\n"+reboard.getContent());	
		}
		
		return reboard;
	}
}
