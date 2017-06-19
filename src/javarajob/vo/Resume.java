package javarajob.vo;

import java.sql.Date;

public class Resume {
	private String userid;
	private Date highini;
	private Date highfin;
	private String highname;
	private String highkind;
	private Date univini;
	private Date univfin;
	private String univname;
	private String univkind;
	private double univscore;
	private String univmajor;
	private String name;
	private Date graduini;
	private Date gradufin;
	private String graduname;
	private String gradukind;
	private double graduscore;
	private String gradumajor;
	private String licenname;
	private String liceninsti;
	private String licengrad;
	private String jobname;
	private Date birth;
	private Date jobini;
	private Date jobfin;
	private String jobrank;
	private String jobdept;
	private String jobcontent;
	private String jobfire;
	private String langname;
	private String langtest;
	private String langscore;
	private Date langdate;
	private String gender;
	private String awardname;
	private String awardcontent;
	private String awardinsti;
	private Date awarddate;
	private String abroadnation;
	private String abroadinsti;
	private String abroadcont;
	private String vete;
	private String handi;
	private String milit;
	private String htel;
	private Date militini;
	private Date militfin;
	private String militkind;
	private String militrank;
	private String ctel;
	private String email;
	private String sns;
	private String address;

	public Resume() {
	}

	public Resume(String userid, Date highini, Date highfin, String highname, String highkind, Date univini,
			Date univfin, String univname, String univkind, double univscore, String univmajor, String name,
			Date graduini, Date gradufin, String graduname, String gradukind, double graduscore, String gradumajor,
			String licenname, String liceninsti, String licengrad, String jobname, Date birth, Date jobini, Date jobfin,
			String jobrank, String jobdept, String jobcontent, String jobfire, String langname, String langtest,
			String langscore, Date langdate, String gender, String awardname, String awardcontent, String awardinsti,
			Date awarddate, String abroadnation, String abroadinsti, String abroadcont, String vete, String handi,
			String milit, String htel, Date militini, Date militfin, String militkind, String militrank, String ctel,
			String email, String sns, String address) {
		this.userid = userid;
		this.highini = highini;
		this.highfin = highfin;
		this.highname = highname;
		this.highkind = highkind;
		this.univini = univini;
		this.univfin = univfin;
		this.univname = univname;
		this.univkind = univkind;
		this.univscore = univscore;
		this.univmajor = univmajor;
		this.name = name;
		this.graduini = graduini;
		this.gradufin = gradufin;
		this.graduname = graduname;
		this.gradukind = gradukind;
		this.graduscore = graduscore;
		this.gradumajor = gradumajor;
		this.licenname = licenname;
		this.liceninsti = liceninsti;
		this.licengrad = licengrad;
		this.jobname = jobname;
		this.birth = birth;
		this.jobini = jobini;
		this.jobfin = jobfin;
		this.jobrank = jobrank;
		this.jobdept = jobdept;
		this.jobcontent = jobcontent;
		this.jobfire = jobfire;
		this.langname = langname;
		this.langtest = langtest;
		this.langscore = langscore;
		this.langdate = langdate;
		this.gender = gender;
		this.awardname = awardname;
		this.awardcontent = awardcontent;
		this.awardinsti = awardinsti;
		this.awarddate = awarddate;
		this.abroadnation = abroadnation;
		this.abroadinsti = abroadinsti;
		this.abroadcont = abroadcont;
		this.vete = vete;
		this.handi = handi;
		this.milit = milit;
		this.htel = htel;
		this.militini = militini;
		this.militfin = militfin;
		this.militkind = militkind;
		this.militrank = militrank;
		this.ctel = ctel;
		this.email = email;
		this.sns = sns;
		this.address = address;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public Date getHighini() {
		return highini;
	}

	public void setHighini(Date highini) {
		this.highini = highini;
	}

	public Date getHighfin() {
		return highfin;
	}

	public void setHighfin(Date highfin) {
		this.highfin = highfin;
	}

	public String getHighname() {
		return highname;
	}

	public void setHighname(String highname) {
		this.highname = highname;
	}

	public String getHighkind() {
		return highkind;
	}

	public void setHighkind(String highkind) {
		this.highkind = highkind;
	}

	public Date getUnivini() {
		return univini;
	}

	public void setUnivini(Date univini) {
		this.univini = univini;
	}

	public Date getUnivfin() {
		return univfin;
	}

	public void setUnivfin(Date univfin) {
		this.univfin = univfin;
	}

	public String getUnivname() {
		return univname;
	}

	public void setUnivname(String univname) {
		this.univname = univname;
	}

	public String getUnivkind() {
		return univkind;
	}

	public void setUnivkind(String univkind) {
		this.univkind = univkind;
	}

	public double getUnivscore() {
		return univscore;
	}

	public void setUnivscore(double univscore) {
		this.univscore = univscore;
	}

	public String getUnivmajor() {
		return univmajor;
	}

	public void setUnivmajor(String univmajor) {
		this.univmajor = univmajor;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getGraduini() {
		return graduini;
	}

	public void setGraduini(Date graduini) {
		this.graduini = graduini;
	}

	public Date getGradufin() {
		return gradufin;
	}

	public void setGradufin(Date gradufin) {
		this.gradufin = gradufin;
	}

	public String getGraduname() {
		return graduname;
	}

	public void setGraduname(String graduname) {
		this.graduname = graduname;
	}

	public String getGradukind() {
		return gradukind;
	}

	public void setGradukind(String gradukind) {
		this.gradukind = gradukind;
	}

	public double getGraduscore() {
		return graduscore;
	}

	public void setGraduscore(double graduscore) {
		this.graduscore = graduscore;
	}

	public String getGradumajor() {
		return gradumajor;
	}

	public void setGradumajor(String gradumajor) {
		this.gradumajor = gradumajor;
	}

	public String getLicenname() {
		return licenname;
	}

	public void setLicenname(String licenname) {
		this.licenname = licenname;
	}

	public String getLiceninsti() {
		return liceninsti;
	}

	public void setLiceninsti(String liceninsti) {
		this.liceninsti = liceninsti;
	}

	public String getLicengrad() {
		return licengrad;
	}

	public void setLicengrad(String licengrad) {
		this.licengrad = licengrad;
	}

	public String getJobname() {
		return jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public Date getJobini() {
		return jobini;
	}

	public void setJobini(Date jobini) {
		this.jobini = jobini;
	}

	public Date getJobfin() {
		return jobfin;
	}

	public void setJobfin(Date jobfin) {
		this.jobfin = jobfin;
	}

	public String getJobrank() {
		return jobrank;
	}

	public void setJobrank(String jobrank) {
		this.jobrank = jobrank;
	}

	public String getJobdept() {
		return jobdept;
	}

	public void setJobdept(String jobdept) {
		this.jobdept = jobdept;
	}

	public String getJobcontent() {
		return jobcontent;
	}

	public void setJobcontent(String jobcontent) {
		this.jobcontent = jobcontent;
	}

	public String getJobfire() {
		return jobfire;
	}

	public void setJobfire(String jobfire) {
		this.jobfire = jobfire;
	}

	public String getLangname() {
		return langname;
	}

	public void setLangname(String langname) {
		this.langname = langname;
	}

	public String getLangtest() {
		return langtest;
	}

	public void setLangtest(String langtest) {
		this.langtest = langtest;
	}

	public String getLangscore() {
		return langscore;
	}

	public void setLangscore(String langscore) {
		this.langscore = langscore;
	}

	public Date getLangdate() {
		return langdate;
	}

	public void setLangdate(Date langdate) {
		this.langdate = langdate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAwardname() {
		return awardname;
	}

	public void setAwardname(String awardname) {
		this.awardname = awardname;
	}

	public String getAwardcontent() {
		return awardcontent;
	}

	public void setAwardcontent(String awardcontent) {
		this.awardcontent = awardcontent;
	}

	public String getAwardinsti() {
		return awardinsti;
	}

	public void setAwardinsti(String awardinsti) {
		this.awardinsti = awardinsti;
	}

	public Date getAwarddate() {
		return awarddate;
	}

	public void setAwarddate(Date awarddate) {
		this.awarddate = awarddate;
	}

	public String getAbroadnation() {
		return abroadnation;
	}

	public void setAbroadnation(String abroadnation) {
		this.abroadnation = abroadnation;
	}

	public String getAbroadinsti() {
		return abroadinsti;
	}

	public void setAbroadinsti(String abroadinsti) {
		this.abroadinsti = abroadinsti;
	}

	public String getAbroadcont() {
		return abroadcont;
	}

	public void setAbroadcont(String abroadcont) {
		this.abroadcont = abroadcont;
	}

	public String getVete() {
		return vete;
	}

	public void setVete(String vete) {
		this.vete = vete;
	}

	public String getHandi() {
		return handi;
	}

	public void setHandi(String handi) {
		this.handi = handi;
	}

	public String getMilit() {
		return milit;
	}

	public void setMilit(String milit) {
		this.milit = milit;
	}

	public String getHtel() {
		return htel;
	}

	public void setHtel(String htel) {
		this.htel = htel;
	}

	public Date getMilitini() {
		return militini;
	}

	public void setMilitini(Date militini) {
		this.militini = militini;
	}

	public Date getMilitfin() {
		return militfin;
	}

	public void setMilitfin(Date militfin) {
		this.militfin = militfin;
	}

	public String getMilitkind() {
		return militkind;
	}

	public void setMilitkind(String militkind) {
		this.militkind = militkind;
	}

	public String getMilitrank() {
		return militrank;
	}

	public void setMilitrank(String militrank) {
		this.militrank = militrank;
	}

	public String getCtel() {
		return ctel;
	}

	public void setCtel(String ctel) {
		this.ctel = ctel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSns() {
		return sns;
	}

	public void setSns(String sns) {
		this.sns = sns;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
