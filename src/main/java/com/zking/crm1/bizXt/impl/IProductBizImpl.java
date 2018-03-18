package com.zking.crm1.bizXt.impl;

import com.zking.crm1.bizXt.IProductBiz;
import com.zking.crm1.mapper.ProductMapper;
import com.zking.crm1.model.Product;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IProductBizImpl implements IProductBiz {

    @Autowired
    private ProductMapper productMapper;
    @Override
    public List<Product> listProduct(Product product, PageBean pageBean) {
        return productMapper.list(product);
    }
}
