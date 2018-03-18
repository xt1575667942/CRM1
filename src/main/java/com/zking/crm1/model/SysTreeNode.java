package com.zking.crm1.model;

import sun.plugin2.message.Serializer;

public class SysTreeNode {
    private Integer treeNodeId;

    private String treeNodeName;

    private Long treeNodeType;

    private Long postion;

    private Integer parentNodeId;

    private String url;
    public boolean isLeaf;

    private Long usrRoleId;

    public SysTreeNode() {
        super();
    }

    @Override
    public String toString() {
        return "SysTreeNode{" +
                "treeNodeId=" + treeNodeId +
                ", treeNodeName='" + treeNodeName + '\'' +
                ", treeNodeType=" + treeNodeType +
                ", postion=" + postion +
                ", parentNodeId=" + parentNodeId +
                ", url='" + url + '\'' +
                ", isLeaf=" + isLeaf +
                ", usrRoleId=" + usrRoleId +
                '}';
    }

    public Integer getTreeNodeId() {
        return treeNodeId;
    }

    public void setTreeNodeId(Integer treeNodeId) {
        this.treeNodeId = treeNodeId;
    }

    public String getTreeNodeName() {
        return treeNodeName;
    }

    public void setTreeNodeName(String treeNodeName) {
        this.treeNodeName = treeNodeName;
    }

    public Long getTreeNodeType() {
        return treeNodeType;
    }

    public void setTreeNodeType(Long treeNodeType) {
        this.treeNodeType = treeNodeType;
    }

    public Long getPostion() {
        return postion;
    }

    public void setPostion(Long postion) {
        this.postion = postion;
    }

    public Integer getParentNodeId() {
        return parentNodeId;
    }

    public void setParentNodeId(Integer parentNodeId) {
        this.parentNodeId = parentNodeId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public boolean isLeaf() {
        return isLeaf;
    }

    public void setLeaf(boolean leaf) {
        isLeaf = leaf;
    }

    public Long getUsrRoleId() {
        return usrRoleId;
    }

    public void setUsrRoleId(Long usrRoleId) {
        this.usrRoleId = usrRoleId;
    }

    public SysTreeNode(Integer treeNodeId, String treeNodeName, Long treeNodeType, Long postion, Integer parentNodeId, String url, boolean isLeaf, Long usrRoleId) {
        this.treeNodeId = treeNodeId;
        this.treeNodeName = treeNodeName;
        this.treeNodeType = treeNodeType;
        this.postion = postion;
        this.parentNodeId = parentNodeId;
        this.url = url;
        this.isLeaf = isLeaf;
        this.usrRoleId = usrRoleId;
    }
}