package javarajob.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.repository.CompDao;
import javarajob.vo.Company;
import javarajob.vo.Company_Sch;

@Service
public class CompService {

	@Autowired(required = false)
	public CompDao dao;

	public ArrayList<Company> listCompany(Company_Sch sch, int page, int step) {
		if(page>0){
		sch.setStart((page-1)*step+1);	
		sch.setEnd((page)*step);
		}else{
			System.out.println("page index error.. 1페이지로 고정");
		sch.setStart(1);
		sch.setEnd(step);
		}
		return dao.listCompany(sch);
	}

	public Company getCompany(int companyid) {
		return dao.getCompany(companyid);
	}
}
