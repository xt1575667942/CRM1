package com.zking.crm1.bizXt.impl;

import com.zking.crm1.bizXt.IUserBiz;
import com.zking.crm1.mapper.UserMapper;
import com.zking.crm1.model.User;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IUserBizImpl implements IUserBiz {

    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> listUser(User user,PageBean pageBean) {
        return userMapper.list(user);
    }

    @Override
    public void addUser(User user) {
        userMapper.insertSelective(user);
    }

    @Override
    public void editFlag(User user) {
        userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public User loadLogin(User user) {
        return userMapper.login(user);
    }
}
