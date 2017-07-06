package javarajob.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import javarajob.vo.Company;
import javarajob.vo.SchElement;

@Repository
public interface SchElementDao {
    public ArrayList<SchElement> schQuery(SchElement sch);

    public ArrayList<Company> getCompanys(SchElement sch);

    public int getTotCnt(SchElement sch);

}
