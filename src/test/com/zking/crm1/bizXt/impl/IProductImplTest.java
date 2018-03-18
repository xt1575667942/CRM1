package com.zking.crm1.bizXt.impl;

import com.zking.crm1.biz.impl.BaseTest;
import com.zking.crm1.bizXt.IProductBiz;
import com.zking.crm1.model.Product;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class IProductImplTest extends BaseTest{

    @Autowired
    private IProductBiz productBiz;
    private Product product;

    @Override
    public void setUp() throws Exception {
        super.setUp();
        product = new Product();
    }

    @Test
    public void listProduct() throws Exception {
        List<Product> list = productBiz.listProduct(product,pageBean);
        String k="";
        for (Product S : list) {
            System.out.println(S);
            k=k+S.getProdName()+S.getProdType();
        }
        System.out.println(k);
    }

}