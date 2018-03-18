package com.zking.crm1.controllerXt;

import com.zking.crm1.bizXt.IUserBiz;
import com.zking.crm1.model.ResponseData;
import com.zking.crm1.model.User;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/UserController")
public class UserController {

    @Autowired
    private IUserBiz userBiz;

    //显示所有
    @RequestMapping("/listUser")
    @ResponseBody
    public ResponseData listUser(User user, PageBean pageBean, HttpServletRequest request){
        pageBean.setRequest(request);
        List<User> list=userBiz.listUser(user,pageBean);
        ResponseData responseData = new ResponseData();
        responseData.setRows(list);
        responseData.setTotal(pageBean.getTotalRecord());
        return responseData;
    }

    //显示所有
    @RequestMapping("/listUser2")
    @ResponseBody
    public List<User> listUser2(User user,  HttpServletRequest request){
        List<User> list=userBiz.listUser(user,null);
        return list;
    }

    //登录
    @RequestMapping("/loadLogin")
    @ResponseBody
    public String loadLogin(User user, HttpSession session){
        String data="";
        User u = userBiz.loadLogin(user);
        if(u==null){
            data = "1";//输入的账号或密码有误
        }else{
            data="2";//登录成功
            session.setAttribute("user",u);
        }
        return data;
    }






















}
