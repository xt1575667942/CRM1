package com.zking.crm1.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.zking.crm1.util.PageBean;

import java.util.Date;

public class Chance {
    private Long chcId;

    private String chcSource;

    private String chcCustName;

    private String chcTitle;

    private Integer chcRate;

    private String chcLinkman;

    private String chcTel;

    private String chcDesc;

    private Long chcCreateId;

    private String chcCreateBy;

    private Date chcCreateDate;

    private Long chcDueId;

    private Date chcDueDate;

    private Integer chcStaus;

    private PageBean pageBean;

    public Chance() {
        super();
    }

    @Override
    public String toString() {
        return "Chance{" +
                "chcId=" + chcId +
                ", chcSource='" + chcSource + '\'' +
                ", chcCustName='" + chcCustName + '\'' +
                ", chcTitle='" + chcTitle + '\'' +
                ", chcRate=" + chcRate +
                ", chcLinkman='" + chcLinkman + '\'' +
                ", chcTel='" + chcTel + '\'' +
                ", chcDesc='" + chcDesc + '\'' +
                ", chcCreateId=" + chcCreateId +
                ", chcCreateBy='" + chcCreateBy + '\'' +
                ", chcCreateDate=" + chcCreateDate +
                ", chcDueId=" + chcDueId +
                ", chcDueDate=" + chcDueDate +
                ", chcStaus=" + chcStaus +
                ", pageBean=" + pageBean +
                '}';
    }

    public Long getChcId() {
        return chcId;
    }

    public void setChcId(Long chcId) {
        this.chcId = chcId;
    }

    public String getChcSource() {
        return chcSource;
    }

    public void setChcSource(String chcSource) {
        this.chcSource = chcSource;
    }

    public String getChcCustName() {
        return chcCustName;
    }

    public void setChcCustName(String chcCustName) {
        this.chcCustName = chcCustName;
    }

    public String getChcTitle() {
        return chcTitle;
    }

    public void setChcTitle(String chcTitle) {
        this.chcTitle = chcTitle;
    }

    public Integer getChcRate() {
        return chcRate;
    }

    public void setChcRate(Integer chcRate) {
        this.chcRate = chcRate;
    }

    public String getChcLinkman() {
        return chcLinkman;
    }

    public void setChcLinkman(String chcLinkman) {
        this.chcLinkman = chcLinkman;
    }

    public String getChcTel() {
        return chcTel;
    }

    public void setChcTel(String chcTel) {
        this.chcTel = chcTel;
    }

    public String getChcDesc() {
        return chcDesc;
    }

    public void setChcDesc(String chcDesc) {
        this.chcDesc = chcDesc;
    }

    public Long getChcCreateId() {
        return chcCreateId;
    }

    public void setChcCreateId(Long chcCreateId) {
        this.chcCreateId = chcCreateId;
    }

    public String getChcCreateBy() {
        return chcCreateBy;
    }

    public void setChcCreateBy(String chcCreateBy) {
        this.chcCreateBy = chcCreateBy;
    }

    public Date getChcCreateDate() {
        return chcCreateDate;
    }

    public void setChcCreateDate(Date chcCreateDate) {
        this.chcCreateDate = chcCreateDate;
    }

    public Long getChcDueId() {
        return chcDueId;
    }

    public void setChcDueId(Long chcDueId) {
        this.chcDueId = chcDueId;
    }

    public Date getChcDueDate() {
        return chcDueDate;
    }

    public void setChcDueDate(Date chcDueDate) {
        this.chcDueDate = chcDueDate;
    }

    public Integer getChcStaus() {
        return chcStaus;
    }

    public void setChcStaus(Integer chcStaus) {
        this.chcStaus = chcStaus;
    }

    public PageBean getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean pageBean) {
        this.pageBean = pageBean;
    }

    public Chance(Long chcId, String chcSource, String chcCustName, String chcTitle, Integer chcRate, String chcLinkman, String chcTel, String chcDesc, Long chcCreateId, String chcCreateBy, Date chcCreateDate, Long chcDueId, Date chcDueDate, Integer chcStaus, PageBean pageBean) {
        this.chcId = chcId;
        this.chcSource = chcSource;
        this.chcCustName = chcCustName;
        this.chcTitle = chcTitle;
        this.chcRate = chcRate;
        this.chcLinkman = chcLinkman;
        this.chcTel = chcTel;
        this.chcDesc = chcDesc;
        this.chcCreateId = chcCreateId;
        this.chcCreateBy = chcCreateBy;
        this.chcCreateDate = chcCreateDate;
        this.chcDueId = chcDueId;
        this.chcDueDate = chcDueDate;
        this.chcStaus = chcStaus;
        this.pageBean = pageBean;
    }
}