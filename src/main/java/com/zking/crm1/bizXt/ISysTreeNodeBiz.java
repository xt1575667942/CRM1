package com.zking.crm1.bizXt;

import com.zking.crm1.model.SysTreeNode;

import java.util.List;

public interface ISysTreeNodeBiz {

    List<SysTreeNode> listSysTreeNode(SysTreeNode sysTreeNode);

    List<SysTreeNode> listSysTreeNodePid(SysTreeNode sysTreeNode);
}
