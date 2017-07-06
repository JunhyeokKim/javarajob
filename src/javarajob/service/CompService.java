package javarajob.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.repository.CompDao;
import javarajob.vo.Company;
import javarajob.vo.Company_Sch;
import javarajob.vo.FavCompany;

@Service
public class CompService {

	@Autowired(required = false)
	public CompDao dao;
	
	public ArrayList<Company> listCompany(Company_Sch sch, int size) {
		sch.setCount(dao.getTotCnt(sch));
		if(sch.getCurPage()==0){
			sch.setCurPage(1);
		}
		// ÃÑ ÆäÀÌÁö¼ö
		sch.setPageCount((int)Math.ceil(sch.getCount()/(double)size));
		sch.setStart((sch.getCurPage()-1)*size+1);
		sch.setEnd(sch.getCurPage()*size);
		return dao.listCompany(sch);
	}
	public ArrayList<Company> listCompany(Company_Sch sch) {
		return dao.listCompany(sch);
	}

	public Company getCompany(int companyid) {
		return dao.getCompany(companyid);
	}
	public int getCount(){
		return dao.getTotCnt(new Company_Sch());
	}
	
	public ArrayList<FavCompany> getFavCompanyList(String id){
		return dao.getFavCompanyList(id);
	}
	
	public ArrayList<FavCompany> getFavCompanyListOrderByPopular(String id){
		return dao.getFavCompanyListOrderByPopular(id);
	}
}
