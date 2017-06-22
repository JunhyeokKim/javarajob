package javarajob.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import javarajob.vo.Company;
import javarajob.vo.Company_Sch;

@Repository
public interface CompDao {
	public ArrayList<Company> listCompany(Company_Sch sch);
	public Company getCompany(int companyid);
	public int getCount();
}
