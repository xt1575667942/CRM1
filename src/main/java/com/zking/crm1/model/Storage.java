package com.zking.crm1.model;

public class Storage {
    private Long stkId;

    private Integer stkProdId;

    private String stkWarehouse;

    private String stkWare;

    private Integer stkCount;

    private String stkMemo;

    private Product product;

    private String all;

    public Storage() {
        super();
    }

    @Override
    public String toString() {
        return "Storage{" +
                "stkId=" + stkId +
                ", stkProdId=" + stkProdId +
                ", stkWarehouse='" + stkWarehouse + '\'' +
                ", stkWare='" + stkWare + '\'' +
                ", stkCount=" + stkCount +
                ", stkMemo='" + stkMemo + '\'' +
                ", product=" + product +
                ", all='" + all + '\'' +
                '}';
    }

    public Long getStkId() {
        return stkId;
    }

    public void setStkId(Long stkId) {
        this.stkId = stkId;
    }

    public Integer getStkProdId() {
        return stkProdId;
    }

    public void setStkProdId(Integer stkProdId) {
        this.stkProdId = stkProdId;
    }

    public String getStkWarehouse() {
        return stkWarehouse;
    }

    public void setStkWarehouse(String stkWarehouse) {
        this.stkWarehouse = stkWarehouse;
    }

    public String getStkWare() {
        return stkWare;
    }

    public void setStkWare(String stkWare) {
        this.stkWare = stkWare;
    }

    public Integer getStkCount() {
        return stkCount;
    }

    public void setStkCount(Integer stkCount) {
        this.stkCount = stkCount;
    }

    public String getStkMemo() {
        return stkMemo;
    }

    public void setStkMemo(String stkMemo) {
        this.stkMemo = stkMemo;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getAll() {
        return all;
    }

    public void setAll(String all,Product product) {
        this.all = this.product.getProdName();
    }

    public Storage(Long stkId, Integer stkProdId, String stkWarehouse, String stkWare, Integer stkCount, String stkMemo, Product product, String all) {
        this.stkId = stkId;
        this.stkProdId = stkProdId;
        this.stkWarehouse = stkWarehouse;
        this.stkWare = stkWare;
        this.stkCount = stkCount;
        this.stkMemo = stkMemo;
        this.product = product;
        this.all = all;
    }
}