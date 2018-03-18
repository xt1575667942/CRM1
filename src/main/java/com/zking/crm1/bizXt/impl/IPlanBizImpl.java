package com.zking.crm1.bizXt.impl;

import com.zking.crm1.bizXt.IPlanBiz;
import com.zking.crm1.mapper.PlanMapper;
import com.zking.crm1.model.Plan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IPlanBizImpl implements IPlanBiz {

    @Autowired
    private PlanMapper planMapper;
    @Override
    public List<Plan> listPlan(Plan plan) {
        return planMapper.listPlan(plan);
    }

    @Override
    public void delPlan(Plan plan) {
        planMapper.deleteByPrimaryKey(plan.getPlaId());
    }

    @Override
    public void addPlan(Plan plan) {
        planMapper.insertSelective(plan);
    }

    @Override
    public void editPlan(Plan plan) {
        planMapper.updateByPrimaryKeySelective(plan);
    }
}
