package javarajob.vo;

public class AppliedCareer {

	private int no;
	private String userid;
	private int careerid;

	public AppliedCareer() {
	}

	public AppliedCareer(int no, String userid, int careerid) {
		this.no = no;
		this.userid = userid;
		this.careerid = careerid;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getCareerid() {
		return careerid;
	}

	public void setCareerid(int careerid) {
		this.careerid = careerid;
	}

}
