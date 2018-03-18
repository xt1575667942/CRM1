package com.zking.crm1.bizXt;

import com.zking.crm1.model.User;
import com.zking.crm1.util.PageBean;

import java.util.List;

public interface IUserBiz {

    //显示所有
    List<User> listUser(User user, PageBean pageBean);

    //新增用户
    void addUser(User user);

    //警用
    void editFlag(User user);

    //登录
    User loadLogin(User user);

}
