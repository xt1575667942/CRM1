package com.zking.crm1.bizXt.impl;

import com.zking.crm1.bizXt.IRoleBiz;
import com.zking.crm1.mapper.RoleMapper;
import com.zking.crm1.model.Role;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IRoleBizImpl implements IRoleBiz {

    @Autowired
    private RoleMapper roleMapper;
    @Override
    public List<Role> listRole(Role role, PageBean pageBean) {
        return roleMapper.list(role);
    }

    @Override
    public void addRole(Role role) {
        roleMapper.insertSelective(role);
    }

    @Override
    public void delRole(Role role) {
        roleMapper.deleteByPrimaryKey(role.getRoleId());
    }

    @Override
    public void editRole(Role role) {
        roleMapper.updateByPrimaryKeySelective(role);
    }
}
