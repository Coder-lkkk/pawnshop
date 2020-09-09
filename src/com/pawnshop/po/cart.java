package com.pawnshop.po;

public class cart {
	private long cartid;
	private long productid;
	private long userid;
	private int productnum;
	private float price;
	private int createtime;
	public cart(long cartid, long productid, long userid, int productnum,
			float price, int createtime) {
		super();
		this.cartid = cartid;
		this.productid = productid;
		this.userid = userid;
		this.productnum = productnum;
		this.price = price;
		this.createtime = createtime;
	}
	public long getCartid() {
		return cartid;
	}
	public void setCartid(long cartid) {
		this.cartid = cartid;
	}
	public long getProductid() {
		return productid;
	}
	public void setProductid(long productid) {
		this.productid = productid;
	}
	public long getUserid() {
		return userid;
	}
	public void setUserid(long userid) {
		this.userid = userid;
	}
	public int getProductnum() {
		return productnum;
	}
	public void setProductnum(int productnum) {
		this.productnum = productnum;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getCreatetime() {
		return createtime;
	}
	public void setCreatetime(int createtime) {
		this.createtime = createtime;
	}
}
