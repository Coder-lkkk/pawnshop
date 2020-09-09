package com.pawnshop.po;

public class Diamond {
    @Override
	public String toString() {
		return "Diamond [did=" + did + ", dname=" + dname + ", dbrand="
				+ dbrand + ", dtype=" + dtype + ", dstate=" + dstate
				+ ", dshape=" + dshape + ", dcarat=" + dcarat + ", dcolor="
				+ dcolor + ", dclarity=" + dclarity + ", dcut=" + dcut
				+ ", dsize=" + dsize + ", dphoto=" + dphoto + ", dpremoney="
				+ dpremoney + ", dpawnmoney=" + dpawnmoney + ", dsalemoney="
				+ dsalemoney + ", dcounts=" + dcounts + ", dother=" + dother
				+ ", uid=" + uid + "]";
	}

	private Integer did;

    private String dname;

    private String dbrand;

    private String dtype;

    private String dstate;

    private String dshape;

    private Double dcarat;

    private String dcolor;

    private String dclarity;

    private String dcut;

    private Double dsize;

    private String dphoto;

    private Double dpremoney;

    private Double dpawnmoney;

    private Double dsalemoney;

    private Integer dcounts;

    private String dother;

    private Integer uid;

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname == null ? null : dname.trim();
    }

    public String getDbrand() {
        return dbrand;
    }

    public void setDbrand(String dbrand) {
        this.dbrand = dbrand == null ? null : dbrand.trim();
    }

    public String getDtype() {
        return dtype;
    }

    public void setDtype(String dtype) {
        this.dtype = dtype == null ? null : dtype.trim();
    }

    public String getDstate() {
        return dstate;
    }

    public void setDstate(String dstate) {
        this.dstate = dstate == null ? null : dstate.trim();
    }

    public String getDshape() {
        return dshape;
    }

    public void setDshape(String dshape) {
        this.dshape = dshape == null ? null : dshape.trim();
    }

    public Double getDcarat() {
        return dcarat;
    }

    public void setDcarat(Double dcarat) {
        this.dcarat = dcarat;
    }

    public String getDcolor() {
        return dcolor;
    }

    public void setDcolor(String dcolor) {
        this.dcolor = dcolor == null ? null : dcolor.trim();
    }

    public String getDclarity() {
        return dclarity;
    }

    public void setDclarity(String dclarity) {
        this.dclarity = dclarity == null ? null : dclarity.trim();
    }

    public String getDcut() {
        return dcut;
    }

    public void setDcut(String dcut) {
        this.dcut = dcut == null ? null : dcut.trim();
    }

    public Double getDsize() {
        return dsize;
    }

    public void setDsize(Double dsize) {
        this.dsize = dsize;
    }

    public String getDphoto() {
        return dphoto;
    }

    public void setDphoto(String dphoto) {
        this.dphoto = dphoto == null ? null : dphoto.trim();
    }

    public Double getDpremoney() {
        return dpremoney;
    }

    public void setDpremoney(Double dpremoney) {
        this.dpremoney = dpremoney;
    }

    public Double getDpawnmoney() {
        return dpawnmoney;
    }

    public void setDpawnmoney(Double dpawnmoney) {
        this.dpawnmoney = dpawnmoney;
    }

    public Double getDsalemoney() {
        return dsalemoney;
    }

    public void setDsalemoney(Double dsalemoney) {
        this.dsalemoney = dsalemoney;
    }

    public Integer getDcounts() {
        return dcounts;
    }

    public void setDcounts(Integer dcounts) {
        this.dcounts = dcounts;
    }

    public String getDother() {
        return dother;
    }

    public void setDother(String dother) {
        this.dother = dother == null ? null : dother.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}