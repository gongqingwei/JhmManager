package bean;

import java.util.Date;

public class User {
	private int id;
	private String userName;
	private String pwd;
	private Date createusertime;
	
	public Date getCreateusertime() {
		return createusertime;
	}
	public void setCreateusertime(Date createusertime) {
		this.createusertime = createusertime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public User() {
		super();
	}
	public User(String userName, String pwd) {
		super();
		this.userName = userName;
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", pwd=" + pwd + ", getId()=" + getId()
				+ ", getUserName()=" + getUserName() + ", getPwd()=" + getPwd() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	
}
