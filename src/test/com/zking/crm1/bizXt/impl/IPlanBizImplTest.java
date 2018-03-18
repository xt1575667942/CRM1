package com.zking.crm1.bizXt.impl;

import com.zking.crm1.biz.impl.BaseTest;
import com.zking.crm1.bizXt.IPlanBiz;
import com.zking.crm1.model.Plan;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class IPlanBizImplTest extends BaseTest{

    @Autowired
    private IPlanBiz planBiz;

    private Plan plan;

    public IPlanBizImplTest() {
        super();
        plan = new Plan();
    }

    @Test
    public void listPlan() throws Exception {
        plan.setPlaChcId(15l);
        List<Plan> listPlan = planBiz.listPlan(plan);
        for(Plan s:listPlan){
            System.out.println(s);
        }
    }

    @Test
    public void delPlan() throws Exception {
    }

    @Test
    public void addPlan() throws Exception {
        plan.setPlaChcId(15l);
        plan.setPlaTodo("h");
        planBiz.addPlan(plan);
    }

}