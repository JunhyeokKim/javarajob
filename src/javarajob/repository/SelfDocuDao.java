package javarajob.repository;

import java.util.ArrayList;

import javarajob.vo.SelfDocuMulti;
import javarajob.vo.SelfDocument;

public interface SelfDocuDao {
	
	public ArrayList<SelfDocument> docuView(String id);
	
	public void docuUpload(SelfDocument upt);
	
	public void delSelfIntro(SelfDocuMulti del);
}
