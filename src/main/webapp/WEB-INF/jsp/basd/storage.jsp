<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>jb-aptech毕业设计项目</title>
	<%@include file="/common/head.jsp" %>
    <script type="text/javascript">
        function admin() {
            $('#table').datagrid({

                url:'/StorageController/listStorage',
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
                    { field:'stkId',title:'序号',width:50,sortable:true},
                    { field:'product',title:'产品',width:120,sortable:true,formatter:function(value,rowData,rowIndex){
                        return rowData.product.prodName+""+rowData.product.prodType+""+rowData.product.prodBatch;
                    }},
                    { field:'stkWarehouse',title:'仓库',width:150,sortable:true},
                    { field:'stkWare',title:'货位',width:100,sortable:true},
                    { field:'stkCount',title:'件数',width:100,sortable:true},
                    { field:'stkMemo',title:'备注',width:100,sortable:true}
                ]]
            });
        }
    </script>
</head>
<body onload="admin()">


<table id="table" class="query_form_table">

</table>
</body>
</html>