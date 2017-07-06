package javarajob.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.repository.CareerDao;
import javarajob.repository.FavCareerDao;
import javarajob.vo.FavCareer;

@Service
public class FavCareerService {
	@Autowired(required = false)
	FavCareerDao dao;
	@Autowired(required = false)
	CareerDao careerDao;

	public void addFavCareer(FavCareer vo) {
		dao.addFavCareer(vo);
		careerDao.addBookmark(vo.getCareerid());
	}

	public void removeFavCareer(FavCareer vo ) {
		dao.removeFavCareer(vo);
		careerDao.removeBookmark(vo.getCareerid());
	}
	
	public void removeFavCareerAccount(String id) {
		dao.removeFavCareerAccount(id);
	}

	public ArrayList<FavCareer> favCareerList(String id) {
		return dao.favCareerList(id);
	}

	public FavCareer getFavCareer(FavCareer vo) {
		return dao.getFavCareer(vo);
	}

}
