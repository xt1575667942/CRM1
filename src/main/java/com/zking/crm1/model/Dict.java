package com.zking.crm1.model;

public class Dict {
    private Long dictId;

    private String dictType;

    private String dictItem;

    private String dictValue;

    private Long dictPostion;

    private Integer dictIsEditable;

    public Dict(Long dictId, String dictType, String dictItem, String dictValue, Long dictPostion, Integer dictIsEditable) {
        this.dictId = dictId;
        this.dictType = dictType;
        this.dictItem = dictItem;
        this.dictValue = dictValue;
        this.dictPostion = dictPostion;
        this.dictIsEditable = dictIsEditable;
    }

    public Dict() {
        super();
    }

    public Long getDictId() {
        return dictId;
    }

    public void setDictId(Long dictId) {
        this.dictId = dictId;
    }

    public String getDictType() {
        return dictType;
    }

    public void setDictType(String dictType) {
        this.dictType = dictType;
    }

    public String getDictItem() {
        return dictItem;
    }

    public void setDictItem(String dictItem) {
        this.dictItem = dictItem;
    }

    public String getDictValue() {
        return dictValue;
    }

    public void setDictValue(String dictValue) {
        this.dictValue = dictValue;
    }

    public Long getDictPostion() {
        return dictPostion;
    }

    public void setDictPostion(Long dictPostion) {
        this.dictPostion = dictPostion;
    }

    public Integer getDictIsEditable() {
        return dictIsEditable;
    }

    public void setDictIsEditable(Integer dictIsEditable) {
        this.dictIsEditable = dictIsEditable;
    }

    @Override
    public String toString() {
        return "Dict{" +
                "dictId=" + dictId +
                ", dictType='" + dictType + '\'' +
                ", dictItem='" + dictItem + '\'' +
                ", dictValue='" + dictValue + '\'' +
                ", dictPostion=" + dictPostion +
                ", dictIsEditable=" + dictIsEditable +
                '}';
    }
}