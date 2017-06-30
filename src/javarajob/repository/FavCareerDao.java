package javarajob.repository;


import org.springframework.stereotype.Repository;

import javarajob.vo.FavCareer;

@Repository
public interface FavCareerDao {
	public void addFavCareer(FavCareer vo);
	public void removeFavCareer(int careerid);
	
}
