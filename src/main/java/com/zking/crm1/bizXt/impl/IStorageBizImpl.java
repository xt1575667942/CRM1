package com.zking.crm1.bizXt.impl;

import com.zking.crm1.bizXt.IStorageBiz;
import com.zking.crm1.mapper.StorageMapper;
import com.zking.crm1.model.Storage;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IStorageBizImpl implements IStorageBiz {

    @Autowired
    private StorageMapper storageMapper;
    @Override
    public List<Storage> list(Storage storage, PageBean pageBean) {
        return storageMapper.list(storage);
    }
}
