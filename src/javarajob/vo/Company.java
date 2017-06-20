package javarajob.vo;

import java.sql.Date;

public class Company {

	private int companyid;
	private String companyname;
	private String info;
	private String tel;
	private String location;
	private Date establishmentdate;
	private String annualsales;
	private String industry;
	private String companytype;
	private String website;
	private int companysize;

	public Company(int companyid, String companyname, String info, String tel, String location, Date establishmentdate,
			String annualsales, String industry, String companytype, String website, int companysize) {
		this.companyid = companyid;
		this.companyname = companyname;
		this.info = info;
		this.tel = tel;
		this.location = location;
		this.establishmentdate = establishmentdate;
		this.annualsales = annualsales;
		this.industry = industry;
		this.companytype = companytype;
		this.website = website;
		this.companysize = companysize;
	}

	public Company() {
	}

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

	public String getAnnualsales() {
		return annualsales;
	}

	public void setAnnualsales(String annualsales) {
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
