package com.pawnshop.po;

public class Order {
	private long orderid;
	private long userid;
	private float amount;
	private boolean status;
	private long addressid;
	private String tradeext;
	private int createtime;
	public Order(long orderid, long userid, float amount, boolean status,
			long addressid, String tradeext, int createtime) {
		super();
		this.orderid = orderid;
		this.userid = userid;
		this.amount = amount;
		this.status = status;
		this.addressid = addressid;
		this.tradeext = tradeext;
		this.createtime = createtime;
	}
	public long getOrderid() {
		return orderid;
	}
	public void setOrderid(long orderid) {
		this.orderid = orderid;
	}
	public long getUserid() {
		return userid;
	}
	public void setUserid(long userid) {
		this.userid = userid;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public long getAddressid() {
		return addressid;
	}
	public void setAddressid(long addressid) {
		this.addressid = addressid;
	}
	public String getTradeext() {
		return tradeext;
	}
	public void setTradeext(String tradeext) {
		this.tradeext = tradeext;
	}
	public int getCreatetime() {
		return createtime;
	}
	public void setCreatetime(int createtime) {
		this.createtime = createtime;
	}
}
