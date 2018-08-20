package bean;

import java.util.Date;

public class Loginrecord {
	private int id;
	private String username;
	private Date lastlogintime;
	private String lastloginip;
	private Date createusertime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getLastlogintime() {
		return lastlogintime;
	}
	public void setLastlogintime(Date lastlogintime) {
		this.lastlogintime = lastlogintime;
	}
	public String getLastloginip() {
		return lastloginip;
	}
	public void setLastloginip(String lastloginip) {
		this.lastloginip = lastloginip;
	}
	public Date getCreateusertime() {
		return createusertime;
	}
	public void setCreateusertime(Date createusertime) {
		this.createusertime = createusertime;
	}
	public Loginrecord() {
		super();
	}
	public Loginrecord(String username, Date lastlogintime, String lastloginip, Date createusertime) {
		super();
		this.username = username;
		this.lastlogintime = lastlogintime;
		this.lastloginip = lastloginip;
		this.createusertime = createusertime;
	}
	@Override
	public String toString() {
		return "Loginrecord [id=" + id + ", username=" + username + ", lastlogintime=" + lastlogintime
				+ ", lastloginip=" + lastloginip + ", createusertime=" + createusertime + "]";
	}
	
	
}
