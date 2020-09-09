package com.pawnshop.po;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Jewellery {

	private Integer jid;

	private String jname;
	
	private String jbrand;
	
	private Double jusage;
	
	private Double jpremoney;
	
//	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
	private Date jbuytime;
	
	private Double jpawnmoney;
	
	private Double jsalemoney;
	
	private String jstate;
	
	private String jattachment;
	
	private String jmaterial;
	
	private String jinmaterial;
	
	private String jweight;
	
	private Double jdiam;
	
	private Double jlength;
	
	private String jphoto;
	
	private String jother;
	
	private String jcounts;
	
	private String jtype;
	
	private String jstyle;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
	private Date jpawntime;
	
	private Integer uid;
    public Integer getJid() {
		return jid;
	}

	public void setJid(Integer jid) {
		this.jid = jid;
	}

	public String getJname() {
		return jname;
	}

	public void setJname(String jname) {
		this.jname = jname;
	}

	public String getJbrand() {
		return jbrand;
	}

	public void setJbrand(String jbrand) {
		this.jbrand = jbrand;
	}

	public Double getJusage() {
		return jusage;
	}

	public void setJusage(Double jusage) {
		this.jusage = jusage;
	}

	public Double getJpremoney() {
		return jpremoney;
	}

	public void setJpremoney(Double jpremoney) {
		this.jpremoney = jpremoney;
	}

	public Date getJbuytime() {
		return jbuytime;
	}

	public void setJbuytime(Date jbuytime) {
		this.jbuytime = jbuytime;
	}

	public Double getJpawnmoney() {
		return jpawnmoney;
	}

	public void setJpawnmoney(Double jpawnmoney) {
		this.jpawnmoney = jpawnmoney;
	}

	public Double getJsalemoney() {
		return jsalemoney;
	}

	public void setJsalemoney(Double jsalemoney) {
		this.jsalemoney = jsalemoney;
	}

	public String getJstate() {
		return jstate;
	}

	public void setJstate(String jstate) {
		this.jstate = jstate;
	}

	public String getJattachment() {
		return jattachment;
	}

	public void setJattachment(String jattachment) {
		this.jattachment = jattachment;
	}

	public String getJmaterial() {
		return jmaterial;
	}

	public void setJmaterial(String jmaterial) {
		this.jmaterial = jmaterial;
	}

	public String getJinmaterial() {
		return jinmaterial;
	}

	public void setJinmaterial(String jinmaterial) {
		this.jinmaterial = jinmaterial;
	}

	public String getJweight() {
		return jweight;
	}

	public void setJweight(String jweight) {
		this.jweight = jweight;
	}

	public Double getJdiam() {
		return jdiam;
	}

	public void setJdiam(Double jdiam) {
		this.jdiam = jdiam;
	}

	public Double getJlength() {
		return jlength;
	}

	public void setJlength(Double jlength) {
		this.jlength = jlength;
	}

	public String getJphoto() {
		return jphoto;
	}

	public void setJphoto(String jphoto) {
		this.jphoto = jphoto;
	}

	public String getJother() {
		return jother;
	}

	public void setJother(String jother) {
		this.jother = jother;
	}

	public String getJcounts() {
		return jcounts;
	}

	public void setJcounts(String jcounts) {
		this.jcounts = jcounts;
	}

	public String getJtype() {
		return jtype;
	}

	public void setJtype(String jtype) {
		this.jtype = jtype;
	}

	public String getJstyle() {
		return jstyle;
	}

	public void setJstyle(String jstyle) {
		this.jstyle = jstyle;
	}

	public Date getJpawntime() {
		return jpawntime;
	}

	public void setJpawntime(Date jpawntime) {
		this.jpawntime = jpawntime;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}


	@Override
	public String toString() {
		return "Jewellery [jid=" + jid + ", jname=" + jname + ", jbrand="
				+ jbrand + ", jusage=" + jusage + ", jpremoney=" + jpremoney
				+ ", jbuytime=" + jbuytime + ", jpawnmoney=" + jpawnmoney
				+ ", jsalemoney=" + jsalemoney + ", jstate=" + jstate
				+ ", jattachment=" + jattachment + ", jmaterial=" + jmaterial
				+ ", jinmaterial=" + jinmaterial + ", jweight=" + jweight
				+ ", jdiam=" + jdiam + ", jlength=" + jlength + ", jphoto="
				+ jphoto + ", jother=" + jother + ", jcounts=" + jcounts
				+ ", jtype=" + jtype + ", jstyle=" + jstyle + ", jpawntime="
				+ jpawntime + ", uid=" + uid + "]";
	}
}