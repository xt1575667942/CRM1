package com.zking.crm1.biz.impl;

import com.zking.crm1.util.PageBean;
import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class BaseTest {

    protected PageBean pageBean;
    @Before
    public void setUp() throws Exception {
        pageBean=new PageBean();
    }


}