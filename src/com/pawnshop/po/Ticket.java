package com.pawnshop.po;

import java.util.Date;

public class Ticket {
	
	private int id;
	private String type;
	private Date date;
	private String remark;
	private String state;
	private int pid;
	private int uid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Ticket [id=" + id + ", type=" + type + ", date=" + date
				+ ", remark=" + remark + ", state=" + state + ", pid=" + pid
				+ ", uid=" + uid + "]";
	}
	
}
