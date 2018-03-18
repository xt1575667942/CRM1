package com.zking.crm1.mapper;

import com.zking.crm1.model.Storage;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StorageMapper {
    int deleteByPrimaryKey(Long stkId);

    int insert(Storage record);

    int insertSelective(Storage record);

    Storage selectByPrimaryKey(Long stkId);

    int updateByPrimaryKeySelective(Storage record);

    int updateByPrimaryKey(Storage record);

    List<Storage> list(Storage storage);
}