package com.pawnshop.po;

import java.util.Date;

public class Watch {
    @Override
	public String toString() {
		return "Watch [wid=" + wid + ", wname=" + wname + ", wbrand=" + wbrand
				+ ", wusage=" + wusage + ", wpremoney=" + wpremoney
				+ ", wbuytime=" + wbuytime + ", wpawnmoney=" + wpawnmoney
				+ ", wsalemoney=" + wsalemoney + ", wstate=" + wstate
				+ ", wattachment=" + wattachment + ", wstyle=" + wstyle
				+ ", casematerial=" + casematerial + ", surmaterial="
				+ surmaterial + ", bandmaterial=" + bandmaterial + ", wweight="
				+ wweight + ", wdiam=" + wdiam + ", wtype=" + wtype
				+ ", wother=" + wother + ", wphoto=" + wphoto + ", wcounts="
				+ wcounts + ", uid=" + uid + "]";
	}

	private Integer wid;

    private String wname;

    private String wbrand;

    private String wusage;

    private Double wpremoney;

    private Date wbuytime;

    private Double wpawnmoney;

    private Double wsalemoney;

    private String wstate;

    private String wattachment;

    private String wstyle;

    private String casematerial;

    private String surmaterial;

    private String bandmaterial;

    private String wweight;

    private Double wdiam;

    private String wtype;

    private String wother;

    private String wphoto;

    private Integer wcounts;

    private Integer uid;

    public Integer getWid() {
        return wid;
    }

    public void setWid(Integer wid) {
        this.wid = wid;
    }

    public String getWname() {
        return wname;
    }

    public void setWname(String wname) {
        this.wname = wname == null ? null : wname.trim();
    }

    public String getWbrand() {
        return wbrand;
    }

    public void setWbrand(String wbrand) {
        this.wbrand = wbrand == null ? null : wbrand.trim();
    }

    public String getWusage() {
        return wusage;
    }

    public void setWusage(String wusage) {
        this.wusage = wusage == null ? null : wusage.trim();
    }

    public Double getWpremoney() {
        return wpremoney;
    }

    public void setWpremoney(Double wpremoney) {
        this.wpremoney = wpremoney;
    }

    public Date getWbuytime() {
        return wbuytime;
    }

    public void setWbuytime(Date wbuytime) {
        this.wbuytime = wbuytime;
    }

    public Double getWpawnmoney() {
        return wpawnmoney;
    }

    public void setWpawnmoney(Double wpawnmoney) {
        this.wpawnmoney = wpawnmoney;
    }

    public Double getWsalemoney() {
        return wsalemoney;
    }

    public void setWsalemoney(Double wsalemoney) {
        this.wsalemoney = wsalemoney;
    }

    public String getWstate() {
        return wstate;
    }

    public void setWstate(String wstate) {
        this.wstate = wstate == null ? null : wstate.trim();
    }

    public String getWattachment() {
        return wattachment;
    }

    public void setWattachment(String wattachment) {
        this.wattachment = wattachment == null ? null : wattachment.trim();
    }

    public String getWstyle() {
        return wstyle;
    }

    public void setWstyle(String wstyle) {
        this.wstyle = wstyle == null ? null : wstyle.trim();
    }

    public String getCasematerial() {
        return casematerial;
    }

    public void setCasematerial(String casematerial) {
        this.casematerial = casematerial == null ? null : casematerial.trim();
    }

    public String getSurmaterial() {
        return surmaterial;
    }

    public void setSurmaterial(String surmaterial) {
        this.surmaterial = surmaterial == null ? null : surmaterial.trim();
    }

    public String getBandmaterial() {
        return bandmaterial;
    }

    public void setBandmaterial(String bandmaterial) {
        this.bandmaterial = bandmaterial == null ? null : bandmaterial.trim();
    }

    public String getWweight() {
        return wweight;
    }

    public void setWweight(String wweight) {
        this.wweight = wweight == null ? null : wweight.trim();
    }

    public Double getWdiam() {
        return wdiam;
    }

    public void setWdiam(Double wdiam) {
        this.wdiam = wdiam;
    }

    public String getWtype() {
        return wtype;
    }

    public void setWtype(String wtype) {
        this.wtype = wtype == null ? null : wtype.trim();
    }

    public String getWother() {
        return wother;
    }

    public void setWother(String wother) {
        this.wother = wother == null ? null : wother.trim();
    }

    public String getWphoto() {
        return wphoto;
    }

    public void setWphoto(String wphoto) {
        this.wphoto = wphoto == null ? null : wphoto.trim();
    }

    public Integer getWcounts() {
        return wcounts;
    }

    public void setWcounts(Integer wcounts) {
        this.wcounts = wcounts;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}