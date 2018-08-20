package bean;

import java.util.Date;

public class Toufang {
	int num;
	String suoluetu;
	String erweicodename;
	String pagetitle;
	int alltoufangnum;
	int alreadytoufangnum;
	int usernum;
	int exchangeqr;
	Date createdate;
	
	public int getExchangeqr() {
		return exchangeqr;
	}
	public void setExchangeqr(int exchangeqr) {
		this.exchangeqr = exchangeqr;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSuoluetu() {
		return suoluetu;
	}
	public void setSuoluetu(String suoluetu) {
		this.suoluetu = suoluetu;
	}
	public String getErweicodename() {
		return erweicodename;
	}
	public void setErweicodename(String erweicodename) {
		this.erweicodename = erweicodename;
	}
	public String getPagetitle() {
		return pagetitle;
	}
	public void setPagetitle(String pagetitle) {
		this.pagetitle = pagetitle;
	}
	public int getAlltoufangnum() {
		return alltoufangnum;
	}
	public void setAlltoufangnum(int alltoufangnum) {
		this.alltoufangnum = alltoufangnum;
	}
	public int getAlreadytoufangnum() {
		return alreadytoufangnum;
	}
	public void setAlreadytoufangnum(int alreadytoufangnum) {
		this.alreadytoufangnum = alreadytoufangnum;
	}
	public int getUsernum() {
		return usernum;
	}
	public void setUsernum(int usernum) {
		this.usernum = usernum;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	
	public Toufang(int num, String suoluetu, String erweicodename, String pagetitle, int alltoufangnum,
			int alreadytoufangnum, int usernum, int exchangeqr, Date createdate) {
		super();
		this.num = num;
		this.suoluetu = suoluetu;
		this.erweicodename = erweicodename;
		this.pagetitle = pagetitle;
		this.alltoufangnum = alltoufangnum;
		this.alreadytoufangnum = alreadytoufangnum;
		this.usernum = usernum;
		this.exchangeqr = exchangeqr;
		this.createdate = createdate;
	}
	public Toufang() {
		super();
	}
	
	
}
