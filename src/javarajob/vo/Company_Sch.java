package javarajob.vo;

import java.sql.Date;

public class Company_Sch {
	private int companyid;
	private String companyname;
	private String info;
	private String tel;
	private String location;
	private Date establishmentdate;
	private int annualsales;
	private String industry;
	private String companytype;
	private String website;
	private int companysize;

	public int getCompanyid() {
		return companyid;
	}

	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Date getEstablishmentdate() {
		return establishmentdate;
	}

	public void setEstablishmentdate(Date establishmentdate) {
		this.establishmentdate = establishmentdate;
	}

	public int getAnnualsales() {
		return annualsales;
	}

	public void setAnnualsales(int annualsales) {
		this.annualsales = annualsales;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getCompanytype() {
		return companytype;
	}

	public void setCompanytype(String companytype) {
		this.companytype = companytype;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public int getCompanysize() {
		return companysize;
	}

	public void setCompanysize(int companysize) {
		this.companysize = companysize;
	}

}
