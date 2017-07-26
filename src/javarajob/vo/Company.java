package javarajob.vo;

import java.sql.Date;
import java.util.ArrayList;

public class Company {

	private int companyid;
	private String companyname;
	private String imageurl;
	private String info;
	private String tel;
	private String headquarter;
	private Date establishmentdate;
	private int annualsales;
	private int industry;
	private int companytype;
	private String website;
	private String shortinfo;
	private int companysize;
	// checkbox 검사를 위한 field
	private ArrayList<Integer> fields;
	private ArrayList<Career> careers;
	// 계정 별 bookmark 여부
	private boolean bookmarked;
	// 회사의 공고 중 가장 첫번와 마지막 공고 날짜
	private Date firstpostdate;
	private Date lastenddate;

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

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageURL) {
		this.imageurl = imageURL;
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

	public String getHeadquarter() {
		return headquarter;
	}

	public void setHeadquarter(String location) {
		this.headquarter = location;
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

	

	public ArrayList<Integer> getFields() {
		return fields;
	}

	public void setFields(ArrayList<Integer> fields) {
		this.fields = fields;
	}

	public ArrayList<Career> getCareers() {
		return careers;
	}

	public void setCareers(ArrayList<Career> careers) {
		this.careers = careers;
	}

	public boolean isBookmarked() {
		return bookmarked;
	}

	public void setBookmarked(boolean bookmarked) {
		this.bookmarked = bookmarked;
	}

	public Date getFirstpostdate() {
		return firstpostdate;
	}

	public void setFirstpostdate(Date firstpostdate) {
		this.firstpostdate = firstpostdate;
	}

	public Date getLastenddate() {
		return lastenddate;
	}

	public void setLastenddate(Date lastenddate) {
		this.lastenddate = lastenddate;
	}

	@Override
	public String toString() {
		return "Company [companyid=" + companyid + ", companyname=" + companyname + ", info=" + info + ", tel=" + tel
				+ ", location=" + headquarter + ", establishmentdate=" + establishmentdate + ", annualsales=" + annualsales
				+ ", industry=" + industry + ", companytype=" + companytype + ", website=" + website + ", shortinfo="
				+ shortinfo + ", companysize=" + companysize + ", careers=" + careers + "]";
	}

}