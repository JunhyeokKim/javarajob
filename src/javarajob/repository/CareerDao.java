package javarajob.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import javarajob.vo.Career;
import javarajob.vo.Career_Sch;

@Repository
public interface CareerDao {
	public void insertCareer(Career vo);

	public ArrayList<Career> listCareer(Career_Sch sch);

	public Career getCareer(int careerid);

	public void deleteCareer(int careerid);

	public void updateCareer(Career upt);

	public ArrayList<Career> listCareerForIndex();

	public int getCount();

	public void addBookmark(int careerid);

	public void removeBookmark(int careerid);

	public ArrayList<Career> listCareerforBookmark(String id);
	
	public ArrayList<Career> listCareerforBookmarkOrderByBookmark(String id);

	public int getFavCount(String id);
	
	public int getFavCountCompany(String id);
	
	public ArrayList<Career> listCareerForIndexSelect(int industry);
	
	public ArrayList<Career> listCareerForIndexOrderByBookmark();
}
