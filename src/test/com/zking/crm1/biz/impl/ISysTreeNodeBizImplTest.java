package com.zking.crm1.biz.impl;

import com.zking.crm1.bizXt.ISysTreeNodeBiz;
import com.zking.crm1.model.SysTreeNode;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ISysTreeNodeBizImplTest extends BaseTest{


    @Autowired
    private ISysTreeNodeBiz sysTreeNodeBiz;

    private SysTreeNode sysTreeNode;

    @Override
    public void setUp() throws Exception {
        super.setUp();
        sysTreeNode = new SysTreeNode();
    }

    @Test
    public void listSysTreeNode() throws Exception {
        List<SysTreeNode> list = sysTreeNodeBiz.listSysTreeNode(sysTreeNode);
        for(SysTreeNode d:list){
            System.out.println(d);
        }
    }

}