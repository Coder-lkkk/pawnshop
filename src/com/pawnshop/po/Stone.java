package com.pawnshop.po;

public class Stone {
    @Override
	public String toString() {
		return "Stone [sid=" + sid + ", sname=" + sname + ", sstyle=" + sstyle
				+ ", sstate=" + sstate + ", spremoney=" + spremoney
				+ ", spawnmoney=" + spawnmoney + ", ssalemoney=" + ssalemoney
				+ ", ssize=" + ssize + ", sweight=" + sweight + ", stype="
				+ stype + ", sother=" + sother + ", sphoto=" + sphoto
				+ ", scounts=" + scounts + ", uid=" + uid + "]";
	}

	private Integer sid;

    private String sname;

    private String sstyle;

    private String sstate;

    private Double spremoney;

    private Double spawnmoney;

    private Double ssalemoney;

    private Double ssize;

    private Double sweight;

    private String stype;

    private String sother;

    private String sphoto;

    private String scounts;

    private Integer uid;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getSstyle() {
        return sstyle;
    }

    public void setSstyle(String sstyle) {
        this.sstyle = sstyle == null ? null : sstyle.trim();
    }

    public String getSstate() {
        return sstate;
    }

    public void setSstate(String sstate) {
        this.sstate = sstate == null ? null : sstate.trim();
    }

    public Double getSpremoney() {
        return spremoney;
    }

    public void setSpremoney(Double spremoney) {
        this.spremoney = spremoney;
    }

    public Double getSpawnmoney() {
        return spawnmoney;
    }

    public void setSpawnmoney(Double spawnmoney) {
        this.spawnmoney = spawnmoney;
    }

    public Double getSsalemoney() {
        return ssalemoney;
    }

    public void setSsalemoney(Double ssalemoney) {
        this.ssalemoney = ssalemoney;
    }

    public Double getSsize() {
        return ssize;
    }

    public void setSsize(Double ssize) {
        this.ssize = ssize;
    }

    public Double getSweight() {
        return sweight;
    }

    public void setSweight(Double sweight) {
        this.sweight = sweight;
    }

    public String getStype() {
        return stype;
    }

    public void setStype(String stype) {
        this.stype = stype == null ? null : stype.trim();
    }

    public String getSother() {
        return sother;
    }

    public void setSother(String sother) {
        this.sother = sother == null ? null : sother.trim();
    }

    public String getSphoto() {
        return sphoto;
    }

    public void setSphoto(String sphoto) {
        this.sphoto = sphoto == null ? null : sphoto.trim();
    }

    public String getScounts() {
        return scounts;
    }

    public void setScounts(String scounts) {
        this.scounts = scounts == null ? null : scounts.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}