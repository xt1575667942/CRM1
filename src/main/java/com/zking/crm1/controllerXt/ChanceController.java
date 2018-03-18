package com.zking.crm1.controllerXt;


import com.zking.crm1.bizXt.IChanceBiz;
import com.zking.crm1.model.Chance;
import com.zking.crm1.model.ResponseData;
import com.zking.crm1.util.JsonUtils;
import com.zking.crm1.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
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

    //ajax的方法指派
    @RequestMapping("/listChance")
    public @ResponseBody  ResponseData listChance(HttpSession session, PageBean pageBean, HttpServletRequest request, Chance chance, HttpServletResponse response)throws Exception{
        pageBean.setRequest(request);
        List<Chance> list=chanceBiz.listChance(chance,pageBean);
        ResponseData responseData=new ResponseData();
        responseData.setRows(list);
        responseData.setTotal(pageBean.getTotalRecord());
        return responseData;
    }

    //ajax的方法为指派
    @RequestMapping("/listChance2")
    public @ResponseBody  ResponseData listChance2(PageBean pageBean, HttpServletRequest request, Chance chance){
        pageBean.setRequest(request);

        List<Chance> list = chanceBiz.listChance2(chance, pageBean);
        ResponseData responseData=new ResponseData();
        responseData.setRows(list);
        responseData.setTotal(pageBean.getTotalRecord());
        return responseData;
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

        return "创建成功";
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

    //修改的方法
    @RequestMapping("/editChance")
    public @ResponseBody String editChance(Chance chance){
        chanceBiz.editChance(chance);
        return "Ok";
    }


}
