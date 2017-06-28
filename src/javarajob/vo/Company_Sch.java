package javarajob.vo;

public class Company_Sch {
	// page 처리..
	private int count; // 총건수
	private int pageCount; // 총 페이지 수
	private int curPage; // 클릭한 현재 page번호
	private int start; // 해당 페이지의 시작번호
	private int end;

	private int companyid;
	private String companyname;
	private int[] industry;
	private int[] companytype;

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

	public int[] getIndustry() {
		return industry;
	}

	public void setIndustry(int[] industry) {
		this.industry = industry;
	}

	public int[] getCompanytype() {
		return companytype;
	}

	public void setCompanytype(int[] companytype) {
		this.companytype = companytype;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}


	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}
	
}
