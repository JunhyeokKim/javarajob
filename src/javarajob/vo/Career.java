package javarajob.vo;

import java.util.Date;

public class Career {
	private int careerid;
	private String task;
	private String requirements;
	private String preference;
	private String workingcondition;
	private int companytype;
	private String companyname;
	private String info;
	private int field;
	private int location;
	private int industry;
	private int employmenttype;
	private int companyid;
	private String title;
	private int salary;
	private Date postdate;
	private Date enddate;
	// for order
	private int priorityOrder;

	public int getCareerid() {
		return careerid;
	}

	public void setCareerid(int careerid) {
		this.careerid = careerid;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public String getRequirements() {
		return requirements;
	}

	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}

	public String getPreference() {
		return preference;
	}

	public void setPreference(String preference) {
		this.preference = preference;
	}

	public String getWorkingcondition() {
		return workingcondition;
	}

	public void setWorkingcondition(String workingcondition) {
		this.workingcondition = workingcondition;
	}

	public int getCompanytype() {
		return companytype;
	}

	public void setCompanytype(int companytype) {
		this.companytype = companytype;
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

	public void setInfo(String companyinfo) {
		this.info = companyinfo;
	}

	public int getField() {
		return field;
	}

	public void setField(int field) {
		this.field = field;
	}

	public int getLocation() {
		return location;
	}

	public void setLocation(int location) {
		this.location = location;
	}

	public int getIndustry() {
		return industry;
	}

	public void setIndustry(int industry) {
		this.industry = industry;
	}

	public int getEmploymenttype() {
		return employmenttype;
	}

	public void setEmploymenttype(int employmenttype) {
		this.employmenttype = employmenttype;
	}

	public int getCompanyid() {
		return companyid;
	}

	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
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

	public int getPriorityOrder() {
		return priorityOrder;
	}

	public void setPriorityOrder(int priorityOrder) {
		this.priorityOrder = priorityOrder;
	}

	@Override
	public String toString() {
		return "Career [careerid=" + careerid
				+ ", companyid=" + companyid
				+ ", title=" + title + "]";
	}

}
