package javarajob.vo;

public class AccountInfo {

	private String name;
	private String userid;
	private String password;
	private String tel;
	private String location;
	private String favoritefield;

	public AccountInfo() {
	}

	public AccountInfo(String name, String userid, String password, String tel, String location, String favoritefield) {
		this.name = name;
		this.userid = userid;
		this.password = password;
		this.tel = tel;
		this.location = location;
		this.favoritefield = favoritefield;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getFavoritefield() {
		return favoritefield;
	}

	public void setFavoritefield(String favoritefield) {
		this.favoritefield = favoritefield;
	}

}
