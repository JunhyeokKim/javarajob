package javarajob.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.repository.CompDao;
import javarajob.vo.Company;

@Service
public class CompService {

	@Autowired(required = false)
	public CompDao dao;
	
	public ArrayList<Company> list(){
		return dao.list();
	}
}
