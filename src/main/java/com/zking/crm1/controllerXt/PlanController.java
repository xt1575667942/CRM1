package com.zking.crm1.controllerXt;

import com.zking.crm1.bizXt.IPlanBiz;
import com.zking.crm1.model.Plan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/PlanController")
public class PlanController {

    @Autowired
    private IPlanBiz planBiz;

    @RequestMapping("/addPlan")
    @ResponseBody
    public String addPlan(Plan plan){
        planBiz.addPlan(plan);
        return "Ok";
    }


    @RequestMapping("/listPlan")
    @ResponseBody
    public List<Plan> listPlan(Plan plan){
        List<Plan> list = planBiz.listPlan(plan);
        return list;
    }

    @RequestMapping("/delPlan")
    @ResponseBody
    public String delPlan(Plan plan){
        planBiz.delPlan(plan);
        return "OK";
    }


    @RequestMapping("/editPlan")
    @ResponseBody
    public String editPlan(Plan plan){
        planBiz.editPlan(plan);
        return "OK";
    }
}
