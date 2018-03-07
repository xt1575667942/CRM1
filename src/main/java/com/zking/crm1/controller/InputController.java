package com.zking.crm1.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/input")
public class InputController {

    @RequestMapping("/{dir}/{page}")
    public String forward(@PathVariable String dir,
                          @PathVariable String page){
        String path=dir+"/"+page;
        return path;
    }

    @RequestMapping("/{dir}/{page}/{one}")
    public String forward2(@PathVariable String dir,
                          @PathVariable String page,@PathVariable String one){
        String path=dir+"/"+page+"/"+one;
        return path;
    }

    @RequestMapping("/{dir}/{page}/{one}/{two}")
    public String forward3(@PathVariable String dir,
                           @PathVariable String page,@PathVariable String one,
                           @PathVariable String two){
        String path=dir+"/"+page+"/"+one+"/"+two;
        return path;
    }


}
