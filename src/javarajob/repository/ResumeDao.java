package javarajob.repository;

import org.springframework.stereotype.Repository;

import javarajob.vo.Resume;

@Repository
public interface ResumeDao {

	public void insertResume(Resume r);

	public Resume oneResume(String userId);
}
