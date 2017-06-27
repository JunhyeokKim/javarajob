package javarajob.vo;

import java.util.Date;

public class Career_Sch {
	private int careerid;
	private int[] companytype;
	private String companyname;
	private int companyid;
	private int[] field;
	private int[] location;
	private int[] industry;
	private int[] employmenttype;
	private String title;
	private Date postdate;
	private Date enddate;

	public int getCareerid() {
		return careerid;
	}

	public void setCareerid(int careerid) {
		this.careerid = careerid;
	}

	public int[] getCompanytype() {
		return companytype;
	}

	public void setCompanytype(int[] companytype) {
		this.companytype = companytype;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public int getCompanyid() {
		return companyid;
	}

	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}

	public int[] getField() {
		return field;
	}

	public void setField(int[] field) {
		this.field = field;
	}

	public int[] getLocation() {
		return location;
	}

	public void setLocation(int[] location) {
		this.location = location;
	}

	public int[] getIndustry() {
		return industry;
	}

	public void setIndustry(int[] industry) {
		this.industry = industry;
	}

	public int[] getEmploymenttype() {
		return employmenttype;
	}

	public void setEmploymenttype(int[] employmenttype) {
		this.employmenttype = employmenttype;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getPostdate() {
		return postdate;
	}

	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	
	

}