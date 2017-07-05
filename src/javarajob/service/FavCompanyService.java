package javarajob.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.repository.CompDao;
import javarajob.repository.FavCompanyDao;
import javarajob.vo.FavCompany;

@Service
public class FavCompanyService {
    @Autowired(required = false)
    FavCompanyDao dao;
    @Autowired(required=false)
    CompDao compDao;
    
    public ArrayList<FavCompany> favCompanyList(String id){
        return dao.favCompanyList(id);
    }
    public void addFavCompany(FavCompany vo){
        dao.addFavCompany(vo);
        compDao.addBookmark(vo.getCompanyid());
    }
    public void removeFavCompany(FavCompany vo){
        dao.removeFavCompany(vo);
        compDao.removeBookmark(vo.getCompanyid());
    }
    public FavCompany getFavCompany(FavCompany vo){
    	return dao.getFavCompany(vo);
    }
}

