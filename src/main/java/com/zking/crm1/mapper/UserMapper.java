package com.zking.crm1.mapper;

import com.zking.crm1.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Long usrId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long usrId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> list(User user);

    User login(User user);
}