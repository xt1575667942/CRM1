package com.zking.crm1.bizXt;

import com.zking.crm1.model.Plan;
import com.zking.crm1.util.PageBean;

import java.util.List;

public interface IPlanBiz {

    //显示所有的数据
    List<Plan> listPlan(Plan plan);

    //删除数据
    void delPlan(Plan plan);

    //保存数据
    void addPlan(Plan plan);

    //修改数据
    void editPlan(Plan plan);

}
