package com.zking.crm1.bizXt.impl;

import com.zking.crm1.bizXt.IChanceBiz;
import com.zking.crm1.mapper.ChanceMapper;
import com.zking.crm1.model.Chance;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IChanceBizImpl implements IChanceBiz {

    @Autowired
    private ChanceMapper chanceMapper;
    @Override
    public List<Chance> listChance(Chance chance,PageBean pageBean) {
        return chanceMapper.listchance(chance);
    }

    @Override
    public List<Chance> listChance2(Chance chance, PageBean pageBean) {
        return chanceMapper.listchance2(chance);
    }

    @Override
    public void delChance(Chance chance) {
        chanceMapper.deleteByPrimaryKey(chance.getChcId());
    }

    @Override
    public void addChance(Chance chance) {
        chanceMapper.insertSelective(chance);
    }

    @Override
    public Chance loadChance(Chance chance) {
        return chanceMapper.selectByPrimaryKey(chance.getChcId());
    }

    @Override
    public void editChanceStaus(Chance chance) {
         chanceMapper.editChanceStats(chance);
    }

    @Override
    public void editChance(Chance chance) {
        chanceMapper.updateByPrimaryKeySelective(chance);
    }
}
