package com.zking.crm1.controllerXt;

import com.zking.crm1.bizXt.IProductBiz;
import com.zking.crm1.bizXt.IStorageBiz;
import com.zking.crm1.model.Product;
import com.zking.crm1.model.ResponseData;
import com.zking.crm1.model.Storage;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequestMapping("/StorageController")
public class StorageController {

    @Autowired
    private IStorageBiz storageBiz;

    //显示所有
    @RequestMapping("/listStorage")
    public @ResponseBody
    ResponseData listStorage(Storage storage, PageBean pageBean, HttpServletRequest request){
        pageBean.setRequest(request);
        List<Storage> list=storageBiz.list(storage,pageBean);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(list);
        return responseData;
    }
}
