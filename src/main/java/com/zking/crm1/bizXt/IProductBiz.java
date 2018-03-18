package com.zking.crm1.bizXt;

import com.zking.crm1.model.Product;
import com.zking.crm1.util.PageBean;

import java.util.List;

public interface IProductBiz {

    //显示所有
    List<Product> listProduct(Product product, PageBean pageBean);
}
