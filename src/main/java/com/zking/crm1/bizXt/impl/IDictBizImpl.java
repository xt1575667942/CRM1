package com.zking.crm1.bizXt.impl;

import com.zking.crm1.bizXt.IDictBiz;
import com.zking.crm1.mapper.DictMapper;
import com.zking.crm1.model.Dict;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IDictBizImpl implements IDictBiz {

    @Autowired
    private DictMapper dictMapper;
    @Override
    public List<Dict> listDict(Dict dict, PageBean pageBean) {
        return dictMapper.list(dict);
    }

    @Override
    public void addDict(Dict dict) {
        dictMapper.insertSelective(dict);
    }

    @Override
    public void delDict(Dict dict) {
        dictMapper.deleteByPrimaryKey(dict.getDictId());
    }

    @Override
    public void editDict(Dict dict) {
        dictMapper.updateByPrimaryKeySelective(dict);
    }
}
