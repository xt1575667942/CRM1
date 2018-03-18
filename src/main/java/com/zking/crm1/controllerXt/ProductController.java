package com.zking.crm1.controllerXt;

import com.zking.crm1.bizXt.IProductBiz;
import com.zking.crm1.model.Dict;
import com.zking.crm1.model.Product;
import com.zking.crm1.model.ResponseData;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequestMapping("/ProductController")
public class ProductController {

    @Autowired
    private IProductBiz productBiz;

    //显示所有
    @RequestMapping("/listProduct")
    public @ResponseBody
    ResponseData listProduct(Product product, PageBean pageBean, HttpServletRequest request){
        pageBean.setRequest(request);
        List<Product> list=productBiz.listProduct(product,pageBean);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(list);
        return responseData;
    }
}
