package javarajob.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javarajob.repository.ResumeDao;
import javarajob.vo.Resume;

@Service
public class ResumeService {

	@Autowired(required = false)
	private ResumeDao dao;

	public void insertResume(Resume r) {
		dao.insertResume(r);
	}

	public Resume oneResume(String userId) {
		return dao.oneResume(userId);
	}

}
