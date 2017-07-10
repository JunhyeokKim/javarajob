package javarajob.vo;

public class FavCompany {
	private int companyid;
	private String id;
	private String imageurl;
	private String shortinfo;
	private String companyname;
	private String headquarter;
	private int annualsales;

	public int getCompanyid() {
		return companyid;
	}

	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public String getShortinfo() {
		return shortinfo;
	}

	public void setShortinfo(String shortinfo) {
		this.shortinfo = shortinfo;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getHeadquarter() {
		return headquarter;
	}

	public void setHeadquarter(String location) {
		this.headquarter = location;
	}

	public int getAnnualsales() {
		return annualsales;
	}

	public void setAnnualsales(int annualsales) {
		this.annualsales = annualsales;
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	

}
