package javarajob.d01_board.service;



import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import javarajob.d01_board.repository.A01_MemberDao;
import javarajob.d01_board.vo.JavarajobMember;
import javarajob.d01_board.vo.Member_Sch;

@Service
public class A01_MemberService {
	@Autowired(required=false)
	private A01_MemberDao dao;
	
	public void insertMember(JavarajobMember mem){
		dao.insertMember(mem);
	}
	public ArrayList<JavarajobMember> listMember(Member_Sch sch){
		return dao.listMember(sch);
	}
}
