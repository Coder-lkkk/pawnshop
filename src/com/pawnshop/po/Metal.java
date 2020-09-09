package com.pawnshop.po;

public class Metal {
    @Override
	public String toString() {
		return "Metal [mid=" + mid + ", mname=" + mname + ", mstate=" + mstate
				+ ", mtype=" + mtype + ", mpremoney=" + mpremoney
				+ ", mpwanmoney=" + mpwanmoney + ", msalemoney=" + msalemoney
				+ ", mpurity=" + mpurity + ", musage=" + musage + ", mstyle="
				+ mstyle + ", mother=" + mother + ", mcounts=" + mcounts
				+ ", mphoto=" + mphoto + ", uid=" + uid + "]";
	}

	private Integer mid;

    private String mname;

    private String mstate;

    private String mtype;

    private Double mpremoney;

    private Double mpwanmoney;

    private Double msalemoney;

    private String mpurity;

    private Double musage;

    private String mstyle;

    private String mother;

    private Integer mcounts;

    private String mphoto;

    private Integer uid;

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname == null ? null : mname.trim();
    }

    public String getMstate() {
        return mstate;
    }

    public void setMstate(String mstate) {
        this.mstate = mstate == null ? null : mstate.trim();
    }

    public String getMtype() {
        return mtype;
    }

    public void setMtype(String mtype) {
        this.mtype = mtype == null ? null : mtype.trim();
    }

    public Double getMpremoney() {
        return mpremoney;
    }

    public void setMpremoney(Double mpremoney) {
        this.mpremoney = mpremoney;
    }

    public Double getMpwanmoney() {
        return mpwanmoney;
    }

    public void setMpwanmoney(Double mpwanmoney) {
        this.mpwanmoney = mpwanmoney;
    }

    public Double getMsalemoney() {
        return msalemoney;
    }

    public void setMsalemoney(Double msalemoney) {
        this.msalemoney = msalemoney;
    }

    public String getMpurity() {
        return mpurity;
    }

    public void setMpurity(String mpurity) {
        this.mpurity = mpurity == null ? null : mpurity.trim();
    }

    public Double getMusage() {
        return musage;
    }

    public void setMusage(Double musage) {
        this.musage = musage;
    }

    public String getMstyle() {
        return mstyle;
    }

    public void setMstyle(String mstyle) {
        this.mstyle = mstyle == null ? null : mstyle.trim();
    }

    public String getMother() {
        return mother;
    }

    public void setMother(String mother) {
        this.mother = mother == null ? null : mother.trim();
    }

    public Integer getMcounts() {
        return mcounts;
    }

    public void setMcounts(Integer mcounts) {
        this.mcounts = mcounts;
    }

    public String getMphoto() {
        return mphoto;
    }

    public void setMphoto(String mphoto) {
        this.mphoto = mphoto == null ? null : mphoto.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}