package com.zking.crm1.bizXt.impl;

import com.zking.crm1.biz.impl.BaseTest;
import com.zking.crm1.bizXt.IChanceBiz;
import com.zking.crm1.model.Chance;
import com.zking.crm1.util.PageBean;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

public class IChanceBizImplTest extends BaseTest{



    @Autowired
    private IChanceBiz chanceBiz;

    private Chance chance;

    @Override
    public void setUp() throws Exception {
        super.setUp();
        chance = new Chance();
    }

    @Test
    public void listChance() throws Exception {
        pageBean.setCurPage(1);
        pageBean.setPageRecord(1);
       // chance.setChcStaus("开发中");
        List<Chance> list = chanceBiz.listChance(chance,pageBean);
        for (Chance s : list) {
            System.out.println(s);
        }

    }

    @Test
    public void listChance1() throws Exception {

    }

    @Test
    public void delChance() throws Exception {
    }

    @Test
    public void addChance() throws Exception {
        Date d = new Date();
        System.out.println("当前时间为:" + d);
        //创建日期格式化对象(把日期转成字符串)
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH时mm分s秒");
        String str = sdf.format(d);
        chance.setChcCustName("华为");
        chance.setChcCreateBy("d");
        chance.setChcDueDate(d);
        chance.setChcCreateDate(d);
        chance.setChcLinkman("xi");
        chance.setChcRate(1);
        chance.setChcTel("111");
        chance.setChcTitle("");
        chance.setChcDesc("");
        chance.setChcCreateId(2L);
        chanceBiz.addChance(chance);
    }

    @Test
    public void loadChance() throws Exception {
        chance.setChcId(11l);
        Chance c=chanceBiz.loadChance(chance);
        System.out.println(c);
    }

}