package com.zking.crm1.bizXt;

import com.zking.crm1.model.Chance;
import com.zking.crm1.util.PageBean;

import java.util.List;

public interface IChanceBiz {


    /**
     * 显示所有
     */
    List<Chance> listChance(Chance chance,PageBean pageBean);

    /**
     * 显示所有未指派
     */
    List<Chance> listChance2(Chance chance,PageBean pageBean);

    /**
     * 删除
     */
    void delChance(Chance chance);

    /**
     * 新增方法
     */
    void addChance(Chance chance);

    /**
     * 查单个的方法
     */
    Chance loadChance(Chance chance);

    /**
     * 指派方法
     */
    void editChanceStaus(Chance chance);


    //修改的方法
    void editChance(Chance chance);

}
