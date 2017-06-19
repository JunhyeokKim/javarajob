package javarajob.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import javarajob.vo.Company;

@Repository
public interface CompDao {
	public ArrayList<Company> list();
}
