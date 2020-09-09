package com.pawnshop.po;

import java.util.Date;

public class Bag {
    private Integer bid;

    private String bname;

    private String bbrand;

    private Double busage;

    private Double bpermoney;

    private Date bbuytime;

    private Double bpwanmoney;

    private Double bsalemoney;

    private String bstate;

    private String battachment;

    private Double blength;

    private String bphoto;

    private String bother;

    private Integer bcounts;
    
    private String bState;

    @Override
	public String toString() {
		return "Bag [bid=" + bid + ", bname=" + bname + ", bbrand=" + bbrand
				+ ", busage=" + busage + ", bpermoney=" + bpermoney
				+ ", bbuytime=" + bbuytime + ", bpwanmoney=" + bpwanmoney
				+ ", bsalemoney=" + bsalemoney + ", bstate=" + bstate
				+ ", battachment=" + battachment + ", blength=" + blength
				+ ", bphoto=" + bphoto + ", bother=" + bother + ", bcounts="
				+ bcounts + ", bState=" + bState + ", uid=" + uid + "]";
	}

	private Integer uid;

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname == null ? null : bname.trim();
    }

    public String getBbrand() {
        return bbrand;
    }

    public void setBbrand(String bbrand) {
        this.bbrand = bbrand == null ? null : bbrand.trim();
    }

    public Double getBusage() {
        return busage;
    }

    public void setBusage(Double busage) {
        this.busage = busage;
    }

    public Double getBpermoney() {
        return bpermoney;
    }

    public void setBpermoney(Double bpermoney) {
        this.bpermoney = bpermoney;
    }

    public Date getBbuytime() {
        return bbuytime;
    }

    public void setBbuytime(Date bbuytime) {
        this.bbuytime = bbuytime;
    }

    public Double getBpwanmoney() {
        return bpwanmoney;
    }

    public void setBpwanmoney(Double bpwanmoney) {
        this.bpwanmoney = bpwanmoney;
    }

    public Double getBsalemoney() {
        return bsalemoney;
    }

    public void setBsalemoney(Double bsalemoney) {
        this.bsalemoney = bsalemoney;
    }

    public String getBstate() {
        return bstate;
    }

    public void setBstate(String bstate) {
        this.bstate = bstate == null ? null : bstate.trim();
    }

    public String getBattachment() {
        return battachment;
    }

    public void setBattachment(String battachment) {
        this.battachment = battachment == null ? null : battachment.trim();
    }

    public Double getBlength() {
        return blength;
    }

    public void setBlength(Double blength) {
        this.blength = blength;
    }

    public String getBphoto() {
        return bphoto;
    }

    public void setBphoto(String bphoto) {
        this.bphoto = bphoto == null ? null : bphoto.trim();
    }

    public String getBother() {
        return bother;
    }

    public void setBother(String bother) {
        this.bother = bother == null ? null : bother.trim();
    }

    public Integer getBcounts() {
        return bcounts;
    }

    public void setBcounts(Integer bcounts) {
        this.bcounts = bcounts;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

	public String getbState() {
		return bState;
	}

	public void setbState(String bState) {
		this.bState = bState;
	}
}