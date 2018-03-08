<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<base href="<%=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"%>">

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="copyright" content="All Rights Reserved, Copyright (C) 2013, Wuyeguo, Ltd." />
    <title>客户关系管理系统</title>
    <link rel="stylesheet" type="text/css" href="/easyui/1.3.4/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="/css/wu.css" />
    <link rel="stylesheet" type="text/css" href="/css/icon.css" />
    <script type="text/javascript" src="/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="/easyui/1.3.4/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/easyui/1.3.4/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="/js/listNode.js"></script>
    <script type="text/javascript">
        $(function() {
            $("ul.myTree").each(function() {
                var url = "/SysTreeNodeController/listall?parentNodeId=" + $(this).attr("id");
                $(this).tree({
                    url : url,
                     onSelect : function(node) {
                        var text = node.text;
                        var url = node.attributes.url;
                        if (url) {
                            doOpenTab(text, url);
                        }
                    }
                });
            });
        });


        /**
         * 打开一个新的tab页面,如果存在就选中
         *
         * @param {}
         *            text
         * @param {}
         *            node
         */
        function doOpenTab(text, url) {
            if ($("#tt").tabs('exists', text)) {
                $("#tt").tabs('select', text);
            } else {
                var content = '<iframe scrolling="auto" frameborder="0"  src="'+ url +'" style="width:100%;height:100%;"></iframe>';
                $('#tt').tabs('add', {
                    title : text,
                    content : content,
                    closable : true
                });
            }

        }
    </script>
</head>
<body class="easyui-layout">
<!-- begin of header -->
<div class="wu-header" data-options="region:'north',border:false,split:true">
    <div class="wu-header-left">
        <h1>客户关系管理系统</h1>
    </div>
    <div class="wu-header-right">
        <p><strong class="easyui-tooltip" title="2条未读消息">admin</strong>，欢迎您！</p>
        <p><a href="#">网站首页</a>|<a href="#">支持论坛</a>|<a href="#">帮助中心</a>|<a href="#">安全退出</a></p>
    </div>
</div>
<!-- end of header -->
<!-- begin of sidebar -->
<c:import url="/SysTreeNodeController/listall">
    <c:param name="method">list</c:param>
</c:import>
<div class="wu-sidebar" data-options="region:'west',split:true,border:true,title:'导航菜单'">
    <div class="easyui-accordion" data-options="border:false,fit:true">
        <%--<c:import url="sysTreeNode/toNode">--%>
            <%--<c:param name="method">list</c:param>--%>
        <%--</c:import>--%>
        <c:forEach items="${lists}" var="v">
        <div title="${v.treeNodeName}" data-options="iconCls:'icon-application-cascade'" style="padding:5px;">
            <ul class="myTree" id="${v.treeNodeId}">
            </ul>
        </div>
        </c:forEach>
    </div>
</div>
<!-- end of sidebar -->
<!-- begin of main -->
<div class="wu-main" data-options="region:'center'">
    <div id="tt" class="easyui-tabs" data-options="border:false,fit:true">
        <div title="首页" data-options="closable:false,iconCls:'icon-tip',cls:'pd3'">
            <img src="/images/ktw.jpg" style="width: 1100px;height: 580px;">
        </div>
    </div>
</div>
<!-- end of main -->
<!-- begin of footer -->
<div class="wu-footer" data-options="region:'south',border:true,split:true">
    &copy; 2018 北上广项目
</div>
<!-- end of footer -->
<script type="text/javascript">
    $(function(){
        $('.wu-side-tree a').bind("click",function(){
            var title = $(this).text();
            var url = $(this).attr('data-link');
            var iconCls = $(this).attr('data-icon');
            var iframe = $(this).attr('iframe')==1?true:false;
            addTab(title,url,iconCls,iframe);
        });
    })

    /**
     * Name 载入树形菜单
     */
    $('#wu-side-tree').tree({
        url:'temp/menu.php',
        cache:false,
        onClick:function(node){
            var url = node.attributes['url'];
            if(url==null || url == ""){
                return false;
            }
            else{
                addTab(node.text, url, '', node.attributes['iframe']);
            }
        }
    });

    /**
     * Name 选项卡初始化
     */
    $('#wu-tabs').tabs({
        tools:[{
            iconCls:'icon-reload',
            border:false,
            handler:function(){
                $('#wu-datagrid').datagrid('reload');
            }
        }]
    });

    /**
     * Name 添加菜单选项
     * Param title 名称
     * Param href 链接
     * Param iconCls 图标样式
     * Param iframe 链接跳转方式（true为iframe，false为href）
     */
    function addTab(title, href, iconCls, iframe){
        var tabPanel = $('#wu-tabs');
        if(!tabPanel.tabs('exists',title)){
            var content = '<iframe scrolling="auto" frameborder="0"  src="'+ href +'" style="width:100%;height:100%;"></iframe>';
            if(iframe){
                tabPanel.tabs('add',{
                    title:title,
                    content:content,
                    iconCls:iconCls,
                    fit:true,
                    cls:'pd3',
                    closable:true
                });
            }
            else{
                tabPanel.tabs('add',{
                    title:title,
                    href:href,
                    iconCls:iconCls,
                    fit:true,
                    cls:'pd3',
                    closable:true
                });
            }
        }
        else
        {
            tabPanel.tabs('select',title);
        }
    }
    /**
     * Name 移除菜单选项
     */
    function removeTab(){
        var tabPanel = $('#wu-tabs');
        var tab = tabPanel.tabs('getSelected');
        if (tab){
            var index = tabPanel.tabs('getTabIndex', tab);
            tabPanel.tabs('close', index);
        }
    }
</script>
</body>
</html>
