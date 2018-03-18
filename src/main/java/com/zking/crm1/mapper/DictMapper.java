package com.zking.crm1.mapper;

import com.zking.crm1.model.Dict;

import java.util.List;

public interface DictMapper {
    int deleteByPrimaryKey(Long dictId);

    int insert(Dict record);

    int insertSelective(Dict record);

    Dict selectByPrimaryKey(Long dictId);

    int updateByPrimaryKeySelective(Dict record);

    int updateByPrimaryKey(Dict record);

    List<Dict> list(Dict dict);
}