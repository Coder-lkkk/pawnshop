package com.pawnshop.po;

import java.io.Serializable;

public class User implements Serializable{

	private Integer uid;

    private String username;

    private String password;

    private String ucard;

    private Integer tel;

    private String uemail;

    private String uaddress;
    
    private String uimage;

    private Integer urole;

	public Integer getUrole() {
		return urole;
	}

	public void setUrole(Integer urole) {
		this.urole = urole;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUcard() {
		return ucard;
	}

	public void setUcard(String ucard) {
		this.ucard = ucard;
	}

	public Integer getTel() {
		return tel;
	}

	public void setTel(Integer tel) {
		this.tel = tel;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUaddress() {
		return uaddress;
	}

	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}



	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUimage() {
		return uimage;
	}

	public void setUimage(String uimage) {
		this.uimage = uimage;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password="
				+ password + ", ucard=" + ucard + ", tel=" + tel + ", uemail="
				+ uemail + ", uaddress=" + uaddress + ", uimage=" + uimage
				+ ", urole=" + urole + "]";
	}

}