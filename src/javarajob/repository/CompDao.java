package javarajob.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import javarajob.vo.Company;
import javarajob.vo.Company_Sch;
import javarajob.vo.FavCompany;

@Repository
public interface CompDao {
	public ArrayList<Company> listCompany(Company_Sch sch);
	public Company getCompany(int companyid);
	public int getTotCnt(Company_Sch sch);
	public void addBookmark(int companyid);
    public void removeBookmark(int companyid);
    public ArrayList<FavCompany> getFavCompanyList(String id);
}
