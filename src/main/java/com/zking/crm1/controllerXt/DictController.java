package com.zking.crm1.controllerXt;

import com.zking.crm1.bizXt.IDictBiz;
import com.zking.crm1.model.Dict;
import com.zking.crm1.model.ResponseData;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/DictController")
public class DictController {

    @Autowired
    private IDictBiz dictBiz;

    //显示所有
    @RequestMapping("/listDict")
    public @ResponseBody ResponseData listDict(Dict dict, PageBean pageBean, HttpServletRequest request){
        pageBean.setRequest(request);
        List<Dict> list=dictBiz.listDict(dict,pageBean);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(list);
        return responseData;
    }

    //增加的方法
    @RequestMapping("/addDict")
    public @ResponseBody String addDict(Dict  dict){
        System.out.println(dict);
        dictBiz.addDict(dict);
        return "OK";
    }


    //删除的方法
    @RequestMapping("/delDict")
    public @ResponseBody String delDict(Dict  dict){
        dictBiz.delDict(dict);
        return "OK";
    }

    //修改的方法
    @RequestMapping("/editDict")
    public @ResponseBody String editDict(Dict  dict){
        dictBiz.editDict(dict);
        return "OK";
    }
}
