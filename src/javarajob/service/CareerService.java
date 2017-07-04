package javarajob.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.repository.CareerDao;
import javarajob.vo.Career;
import javarajob.vo.Career_Sch;

@Service
public class CareerService {
	@Autowired(required = false)
	CareerDao dao;

	public void insertCareer(Career vo) {
		dao.insertCareer(vo);
	}

	public ArrayList<Career> listCareer(Career_Sch sch) {
		return dao.listCareer(sch);
	}

	public Career getCareer(int careerid) {
		return dao.getCareer(careerid);
	}

	public void deleteCareer(int careerid) {
		dao.deleteCareer(careerid);
	}

	public void updateCareer(Career upt) {
		dao.updateCareer(upt);
	}
	
	public ArrayList<Career> listCareerforindex() {
		return dao.listCareerforindex();
	}
	
	public int getCount(){
		return dao.getCount();
	}
	
	public ArrayList<Career> listCareerforBookmark(String id){
		return dao.listCareerforBookmark(id);
	}
	
	public int getFavCount(String id){
		return dao.getFavCount(id);
	}

}
