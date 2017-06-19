package javarajob.service;

import org.springframework.stereotype.Service;

import javarajob.repository.A01_test;

@Service
public class A01_testservice {
	
	public A01_test dao;
	
	public String testtt(){
		return dao.testtt();
	}
}
