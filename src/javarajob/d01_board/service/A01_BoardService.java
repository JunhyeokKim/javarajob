package javarajob.d01_board.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.d01_board.repository.A01_BoardDao;
import javarajob.d01_board.vo.Board;
import javarajob.d01_board.vo.Board_Sch;

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
}
