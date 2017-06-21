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
	
	public ArrayList<Company> listCompany(Company_Sch sch){
		return dao.listCompany(sch);
	}
}
