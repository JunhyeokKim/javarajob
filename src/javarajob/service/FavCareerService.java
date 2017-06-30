package javarajob.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.repository.CareerDao;
import javarajob.repository.FavCareerDao;
import javarajob.vo.FavCareer;

@Service
public class FavCareerService {
	@Autowired(required=false)
	FavCareerDao dao;
	@Autowired(required=false)
	CareerDao careerDao;
	
	public void addFavCareer(FavCareer vo){
		dao.addFavCareer(vo);
		careerDao.addBookmark(vo.getCareerid());
	}
	public void removeFavCareer(int careerid){
		dao.removeFavCareer(careerid);
		careerDao.removeBookmark(careerid);
	}
	
}
