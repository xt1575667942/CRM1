<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>jb-aptech毕业设计项目</title>
	<%@include file="/common/head.jsp" %>
    <script type="text/javascript">
        function admin() {
            $('#table').datagrid({
                queryParams: {
                    prodName: $('#prodName').val(),
                    prodType:$('#prodType').val(),
                    prodBatch:$('#prodBatch').val()
                },
                url:'/ProductController/listProduct',
                pagination: true,//显示分页工具栏
                singleSelect:false,
                pageSize:10,
                multiSort:true,
                fitColumns:true,
                toolbar:[{
                    iconCls:'icon-reload',
                    text:'刷新',
                    handler:function () {
                        reload();
                    }
                },'-',{
                    iconCls:'icon-help',
                    text:'帮助',
                    handler:function () {
                        alert("删除按钮");
                        //removeS();
                    }
                }],
                columns:[[
                    { checkbox:true},
                    { field:'prodId',title:'编号',width:50,sortable:true},
                    { field:'prodName',title:'名称',width:120,sortable:true},
                    { field:'prodType',title:'型号',width:150,sortable:true},
                    { field:'prodUnit',title:'单位',width:100,sortable:true},
                    { field:'prodBatch',title:'等级/批次',width:100,sortable:true},
                    { field:'prodPrice',title:'单价（元）',width:100,sortable:true},
                    { field:'prodMemo',title:'备注',width:100,sortable:true}
                ]]
            });
                $('#prodName').val("");
            $('#prodType').val("");
                $('#prodBatch').val("");
        }
    </script>
</head>
<body onload="admin()">

<div class="page_title">产品查询</div>
<div class="wu-toolbar-search">
    <label>名称</label><input id="prodName" class="wu-text" style="width:180px;height: 20px;">
    <label>型号</label><input id="prodType" class="wu-text" style="width:180px;height: 20px;">
    <label>批次</label><input id="prodBatch" class="wu-text" style="width:180px;height: 20px;">
    <a onclick="admin();" class="easyui-linkbutton" iconCls="icon-search">开始检索</a>
</div>

<br />
<table id="table" class="data_list_table">

</table>
</body>
</html>