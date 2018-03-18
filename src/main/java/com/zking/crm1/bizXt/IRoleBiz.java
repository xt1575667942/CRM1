package com.zking.crm1.bizXt;

import com.zking.crm1.model.Role;
import com.zking.crm1.util.PageBean;

import java.util.List;

public interface IRoleBiz {

    //显示所有
    List<Role> listRole(Role role, PageBean pageBean);

    //新增
    void addRole(Role role);

    //禁用
    void delRole(Role role);

    //修改
    void editRole(Role role);
}
