package javarajob.repository; // javarajob.d01_board.repository.A01_MemberDao



import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import javarajob.vo.Account;
import javarajob.vo.Account_Sch;



@Repository
public interface AccountDao {
	public void insertMember(Account mem);
	public ArrayList<Account> listMember(Account_Sch sch);
	public Account getMember(String id);
	public void deleteMember(String id);
	public void updateMember(Account mem);
	public int getCount();
}
