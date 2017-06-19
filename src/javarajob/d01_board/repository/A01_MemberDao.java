package javarajob.d01_board.repository; // javarajob.d01_board.repository.A01_MemberDao



import java.util.ArrayList;

import org.springframework.stereotype.Repository;


import javarajob.d01_board.vo.JavarajobMember;
import javarajob.d01_board.vo.Member_Sch;


@Repository
public interface A01_MemberDao {
	public void insertMember(JavarajobMember mem);
	public ArrayList<JavarajobMember> listMember(Member_Sch sch);
	
}
