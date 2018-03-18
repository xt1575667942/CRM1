package com.zking.crm1.controllerXt;

import com.zking.crm1.bizXt.ISysTreeNodeBiz;
import com.zking.crm1.model.SysTreeNode;

import com.zking.crm1.model.User;
import com.zking.crm1.util.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/SysTreeNodeController")
public class SysTreeNodeController {

    @Autowired
    private ISysTreeNodeBiz sysTreeNodeBiz;


    @RequestMapping("/listall")
    @ResponseBody
    public void listall(HttpServletRequest request, HttpServletResponse response,SysTreeNode sysTreeNode, HttpSession session) throws IOException {
        String ss=request.getParameter("method");
        String path=null;
        System.out.println("zhi"+ss);
        System.out.println("kkkk"+ss);
        if("list".equals(ss)){
            System.out.println("进了-------大节点");
            User u2=(User)session.getAttribute("user");
            sysTreeNode.setUsrRoleId(u2.getUsrRoleId());
            List<SysTreeNode> list = sysTreeNodeBiz.listSysTreeNode(sysTreeNode);
            System.out.println("到了后台"+u2.getUsrRoleId());
            session.setAttribute("lists",list);
        }else{
            System.out.println("进了-------小节点");
            List<SysTreeNode> list = sysTreeNodeBiz.listSysTreeNodePid(sysTreeNode);
            List<Map<String, Object>> lists = new ArrayList<Map<String, Object>>();
            Map<String,Object> map=null;
            Map<String,Object> attributes=null;
            for (SysTreeNode t:list){
                map = new HashMap<String,Object>();
                map.put("id",t.getTreeNodeId());
                map.put("text", t.getTreeNodeName());
               // map.put("state", t.isLeaf?"open":"closed");
                //添加自定义属性
                attributes = new HashMap<String,Object>();
                attributes.put("url", t.getUrl());
                map.put("attributes",attributes);
                lists.add(map);
            }
            response.setContentType("text/plain:charset=utf-8");
            OutputStream os= response.getOutputStream();
            JsonUtils.ww(os,lists);
        }

        System.out.println("path"+path);

    }









}
