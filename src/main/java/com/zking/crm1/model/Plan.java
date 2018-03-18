package com.zking.crm1.model;

import java.util.Date;

public class Plan {
    private Long plaId;

    private Long plaChcId;

    private String plaDate;

    private String plaTodo;

    private String plaResult;


    public Plan() {
        super();
    }

    @Override
    public String toString() {
        return "Plan{" +
                "plaId=" + plaId +
                ", plaChcId=" + plaChcId +
                ", plaDate='" + plaDate + '\'' +
                ", plaTodo='" + plaTodo + '\'' +
                ", plaResult='" + plaResult + '\'' +
                '}';
    }

    public Plan(Long plaId, Long plaChcId, String plaDate, String plaTodo, String plaResult) {
        this.plaId = plaId;
        this.plaChcId = plaChcId;
        this.plaDate = plaDate;
        this.plaTodo = plaTodo;
        this.plaResult = plaResult;
    }

    public Long getPlaId() {
        return plaId;
    }

    public void setPlaId(Long plaId) {
        this.plaId = plaId;
    }

    public Long getPlaChcId() {
        return plaChcId;
    }

    public void setPlaChcId(Long plaChcId) {
        this.plaChcId = plaChcId;
    }

    public String getPlaDate() {
        return plaDate;
    }

    public void setPlaDate(String plaDate) {
        this.plaDate = plaDate;
    }

    public String getPlaTodo() {
        return plaTodo;
    }

    public void setPlaTodo(String plaTodo) {
        this.plaTodo = plaTodo;
    }

    public String getPlaResult() {
        return plaResult;
    }

    public void setPlaResult(String plaResult) {
        this.plaResult = plaResult;
    }
}