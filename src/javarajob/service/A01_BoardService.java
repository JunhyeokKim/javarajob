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
		sch.setCount(dao.totCnt(sch));
		
		if(sch.getPageSize() == 0){
			sch.setPageSize(5);
		}
		sch.setPageCount((int)Math.ceil(sch.getCount()/(double)sch.getPageSize()));
		if(sch.getCurPage()==0){
			sch.setCurPage(1);
		}
		sch.setStart((sch.getCurPage()-1)*sch.getPageSize()+1);
		sch.setEnd(sch.getCurPage()*sch.getPageSize());
		
		return dao.listBoard(sch);
	}
	
	public Board getBoard(int no){
		return dao.getBoard(no);
	}

	public Board detailBoard(int no){
		// readCount�� update ó��..
		dao.uptBoardCnt(no);
		
		// �ϳ��� �����͸� ������ �κ�
		return getBoard(no);
	}
	
	public Board getReBoard(int no){
		Board reboard = null;
		// �ʱ���ȭ��
		if(no==0){
			reboard = new Board();
		// ��۵��ȭ��
		}else{
			reboard = dao.getBoard(no);
			reboard.setRefno(no);
			reboard.setSubject("RE : "+reboard.getSubject());
			reboard.setContent("\n\n\n\n���ǳ��� : \n"+reboard.getContent());	
		}
		
		return reboard;
	}
	
	public void deleteBoard(int no){
		dao.deleteBoard(no);
	}
}
