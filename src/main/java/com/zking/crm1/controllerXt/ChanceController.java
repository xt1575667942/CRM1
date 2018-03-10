package com.zking.crm1.controllerXt;


import com.sun.deploy.net.HttpResponse;
import com.zking.crm1.bizXt.IChanceBiz;
import com.zking.crm1.model.Chance;
import com.zking.crm1.util.JsonUtils;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.OutputStream;
import java.util.List;

@Controller
@RequestMapping("/ChanceController")
public class ChanceController {

    @Autowired
    private IChanceBiz chanceBiz;

    //ajax的方法
    @RequestMapping("/listChance")
    public @ResponseBody List<Chance> listChance(HttpSession session, PageBean pageBean, HttpServletRequest request, Chance chance, String name)throws Exception{
        System.out.println("我是"+name);
        pageBean.setRequest(request);
        List<Chance> list=chanceBiz.listChance(chance,pageBean);
        return list;
    }


    //ajax的方法
    @RequestMapping("/listChance2")
    public void listChance2(HttpServletResponse response, PageBean pageBean, HttpServletRequest request, Chance chance, String name)throws Exception{
        System.out.println("我是"+name);
        OutputStream os=response.getOutputStream();

        pageBean.setRequest(request);
        List<Chance> list=chanceBiz.listChance(chance,pageBean);
        JsonUtils.ww(os,list);
    }

    //删除的方法
    @RequestMapping("/delChance")
    public @ResponseBody String delChance(Chance chance){
        chanceBiz.delChance(chance);
        return "OK";
    }

    //增加的方法
    @RequestMapping("/addChance")
    public @ResponseBody String addChance(Chance chance){
        //System.out.println(chance);
        System.out.println("对象"+chance);
        chanceBiz.addChance(chance);

        return "OK";
    }

    //查单个的方法
    @RequestMapping("/loadChance")
    public @ResponseBody Chance loadChance(Chance chance){
        Chance c=chanceBiz.loadChance(chance);
        return c;
    }

    //指派的方法
    @RequestMapping("/editChanceStas")
    public @ResponseBody String editChanceStas(Chance chance){
        chanceBiz.editChanceStaus(chance);
        return "OK";
    }
}
