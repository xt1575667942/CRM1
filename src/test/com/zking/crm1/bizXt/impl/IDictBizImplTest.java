package com.zking.crm1.bizXt.impl;

import com.zking.crm1.biz.impl.BaseTest;
import com.zking.crm1.bizXt.IDictBiz;
import com.zking.crm1.model.Dict;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class IDictBizImplTest extends BaseTest{

    @Autowired
    private IDictBiz dictBiz;

    private Dict dict;

    @Override
    public void setUp() throws Exception {
        super.setUp();
        dict = new Dict();
    }

    @Test
    public void listDict() throws Exception {
        List<Dict> list = dictBiz.listDict(dict, null);
        for (Dict s : list) {
            System.out.println(s);
        }
    }

    @Test
    public void addDict() throws Exception {
        dict.setDictIsEditable(1);
        dict.setDictItem("1");
        dict.setDictPostion(1l);
        dict.setDictType("1");
        dict.setDictValue("1");
        dictBiz.addDict(dict);
    }

    @Test
    public void delDict() throws Exception {
    }

}