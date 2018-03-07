package com.zking.crm1.biz.impl;

import com.zking.crm1.biz.ISysTreeNodeBiz;
import com.zking.crm1.mapper.SysTreeNodeMapper;
import com.zking.crm1.model.SysTreeNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ISysTreeNodeBizImpl implements ISysTreeNodeBiz {

    @Autowired
    private SysTreeNodeMapper sysTreeNodeMapper;

    @Override
    public List<SysTreeNode> listSysTreeNode(SysTreeNode sysTreeNode) {
        return sysTreeNodeMapper.lists(sysTreeNode);
    }

    @Override
    public List<SysTreeNode> listSysTreeNodePid(SysTreeNode sysTreeNode) {
        return sysTreeNodeMapper.listsid(sysTreeNode);
    }
}
