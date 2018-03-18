package com.zking.crm1.bizXt.impl;

import com.zking.crm1.biz.impl.BaseTest;
import com.zking.crm1.bizXt.IStorageBiz;
import com.zking.crm1.model.Storage;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class IStorageBizImplTest extends BaseTest{

    @Autowired
    private IStorageBiz storageBiz;
    private Storage storage;
    @Before
    public void setUp() throws Exception {
        super.setUp();
        storage = new Storage();
    }

    @Test
    public void list() throws Exception {
        List<Storage> list = storageBiz.list(storage, pageBean);
        for (Storage s : list) {
            System.out.println(s);
        }
    }

}