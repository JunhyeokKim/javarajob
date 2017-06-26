package javarajob.vo;

import java.sql.Date;
import java.util.ArrayList;

public class Company {

	private int companyid;
	private String companyname;
	private String info;
	private String tel;
	private String location;
	private Date establishmentdate;
	private int annualsales;
	private int industry;
	private int companytype;
	private String website;
	private String shortinfo;
	private int companysize;
	private ArrayList<Career> careers;
	


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

	public int getIndustry() {
		return industry;
	}

	public void setIndustry(int industry) {
		this.industry = industry;
	}

	public int getCompanytype() {
		return companytype;
	}

	public void setCompanytype(int companytype) {
		this.companytype = companytype;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}
	
	public String getShortinfo() {
		return shortinfo;
	}

	public void setShortinfo(String shortinfo) {
		this.shortinfo = shortinfo;
	}

	public int getCompanysize() {
		return companysize;
	}

	public void setCompanysize(int companysize) {
		this.companysize = companysize;
	}

	public ArrayList<Career> getCareers() {
		return careers;
	}

	public void setCareers(ArrayList<Career> careers) {
		this.careers = careers;
	}

	@Override
	public String toString() {
		return "Company [companyid=" + companyid + ", companyname=" + companyname + ", info=" + info + ", tel=" + tel
				+ ", location=" + location + ", establishmentdate=" + establishmentdate + ", annualsales=" + annualsales
				+ ", industry=" + industry + ", companytype=" + companytype + ", website=" + website + ", shortinfo="
				+ shortinfo + ", companysize=" + companysize + ", careers=" + careers + "]";
	}

	
}
