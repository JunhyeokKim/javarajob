package javarajob.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.repository.SchElementDao;
import javarajob.vo.Company;
import javarajob.vo.SchElement;

@Service
public class SchElementService {

	@Autowired(required=false)
	SchElementDao dao;
	
	public ArrayList<SchElement> schQuery(SchElement sch, int pageSize){
		sch.setCount(dao.getTotCnt(sch));
		if(sch.getCurPage()==0){
			sch.setCurPage(1);
		}
		sch.setPageCount((int)Math.ceil(sch.getCount()/(double)pageSize));
		sch.setStart((sch.getCurPage()-1)*pageSize+1);
		sch.setEnd(sch.getCurPage()*pageSize);
		return dao.schQuery(sch); 
	}
	public ArrayList<Company> getCompanys(SchElement sch){
		return dao.getCompanys(sch);
	}
}
