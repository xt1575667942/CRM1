package com.zking.crm1.controllerXt;

import com.zking.crm1.bizXt.IRoleBiz;
import com.zking.crm1.model.ResponseData;
import com.zking.crm1.model.Role;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/RoleController")
public class RoleController {

    @Autowired
    private IRoleBiz roleBiz;

    //显示
    @RequestMapping("/listRole")
    @ResponseBody
    public ResponseData listRole(PageBean pageBean,Role role, HttpServletRequest request){
        pageBean.setRequest(request);
        List<Role> list=roleBiz.listRole(role,pageBean);
        ResponseData responseData = new ResponseData();
        responseData.setRows(list);
        responseData.setTotal(pageBean.getTotalRecord());
        return responseData;
    }


    //删除
    @RequestMapping("/delRole")
    @ResponseBody
    public String delRole(Role role){
        roleBiz.delRole(role);
        return "OK";
    }


    //修改
    @RequestMapping("/editRole")
    @ResponseBody
    public String editRole(Role role){
        roleBiz.editRole(role);
        return "OK";
    }

    //新增
    @RequestMapping("/addRole")
    @ResponseBody
    public String addRole(Role role){
        roleBiz.addRole(role);
        return "OK";
    }


}
