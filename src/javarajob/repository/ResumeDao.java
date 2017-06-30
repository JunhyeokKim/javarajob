package javarajob.repository;

import org.springframework.stereotype.Repository;

import javarajob.vo.Resume;

@Repository
public interface ResumeDao {

	public void uptResume(Resume r);

	public Resume oneResume(String userId);

	public void delResume(String userId);
}
