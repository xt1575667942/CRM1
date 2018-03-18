<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<base href="<%=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"%>">

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>jb-aptech毕业设计项目</title>
	<%@include file="/common/head.jsp" %>
    <script type="text/javascript">
        function admin() {
            $('#table').datagrid({
                url:'/DictController/listDict',
                queryParams: {
                    dictType: $('#dictType').val(),
                    dictItem:$('#dictItem').val(),
                    dictValue:$('#dictValue').val()
                },
                pagination: true,//显示分页工具栏
                singleSelect:false,
                pageSize:10,
                multiSort:true,
                fitColumns:true,
                toolbar:[{
                    iconCls:'icon-save',
                    text:'新建',
                    handler:function () {
                        openAddDict();
                    }

                },'-',{
                    iconCls:'icon-remove',
                    text:'删除',
                    handler:function () {
                        delDict();
                    }

                },'-',{
                    iconCls:'icon-edit',
                    text:'编辑',
                    handler:function () {
                        openEditict();
                    }

                },'-',{
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
                    { field:'dictId',title:'编号',width:50,sortable:true},
                    { field:'dictType',title:'类别',width:120,sortable:true},
                    { field:'dictItem',title:'条目',width:150,sortable:true},
                    { field:'dictValue',title:'值',width:100,sortable:true},
                    { field:'dictIsEditable',title:'是否可编辑',width:80,sortable:true,
                        formatter:function (dictIsEditable) {
                            if(dictIsEditable==0){
                                return '否';
                            }else{
                                return '是';
                            }
                        }
                    }
                ]]
            });
                $('#dictType').val(""),
                $('#dictItem').val("");
                $('#dictValue').val("");
        }



        function openAddDict() {
            $('#wu-dialog').dialog({
                closed: false,
                modal:true,
                title: "新增",
                width:500,
                height:200,
                buttons: [{
                    text: '保存',
                    iconCls: 'icon-ok',
                    handler: function () {
                       var ss= $("#dictIsEditable").is(':checked');
                       var tta=0;
                       if(ss==true){
                           alert("s");
                           tta=1;
                       }else{
                           tta=0;
                       }
                        $("#forms").form('submit', {
                            url:"/DictController/addDict",
                            onSubmit: function(param){
                                param.dictIsEditable = tta;
                            },
                            success:function(data){
                              //  $.messager.alert("提示消息", "创建成功");
                               reload();
                            }
                        });
                    }
                }, {
                    text: '取消',
                    iconCls: 'icon-cancel',
                    handler: function () {
                        $('#wu-dialog').dialog('close');
                    }
                }]
            });
        }

        
        //删除
        function delDict() {
            var items = $('#table').datagrid('getSelections');
            var sta = [];
            var sta2 = [];
            $(items).each(function() {
                sta2.push(this.dictId);
                sta.push(this.dictIsEditable);
            });
           // alert(sta2);
            var num=sta.indexOf(1);
            alert(num+sta.length);
            if(sta.length<1){
                $.messager.alert("提示消息", "请选择数据进行操作");
            }else{
                if (num==-1){
                    $.messager.alert("单数据操作", "抱歉不可以进行编辑");
                }else{
                    $(items).each(function(){
                        var ids2 = [];
                        ids2.push(this.dictId);
                        $.ajax({
                            data:"dictId="+ids2,
                            url: "/DictController/delDict",
                            type: "POST",
                            dataType: 'text',
                            success: function (data) {
                                $.messager.alert("提示消息", "删除成功!");
                                // reload();
                            }
                        });
                    });
                }
            }


        }



        function openEditict() {
            var items = $('#table').datagrid('getSelections');
            var sta = [];
            var sta2 = [];
            $(items).each(function() {
                sta2.push(this.dictId);
                sta.push(this.dictIsEditable);
            });
            var num=sta.indexOf(1);
            alert(num+sta.length);
            if(sta.length<1){
                $.messager.alert("提示消息", "请选择数据进行操作");
            }else{
                if (num==-1){
                    $.messager.alert("单数据操作", "抱歉不可以进行编辑");
                }else{
            $('#forms').form('load',items[0]);
            $('#wu-dialog').dialog({
                closed: false,
                modal:true,
                title: "修改",
                width:500,
                height:200,
                buttons: [{
                    text: '保存',
                    iconCls: 'icon-ok',
                    handler: function () {
                        var ss= $("#dictIsEditable").is(':checked');
                        var tta=0;
                        if(ss==true){
                            alert("s");
                            tta=1;
                        }else{
                            tta=0;
                        }
                        $("#forms").form('submit', {
                            url:"/DictController/editDict",
                            onSubmit: function(param){
                                param.dictIsEditable = tta;
                            },
                            success:function(data){
                                //  $.messager.alert("提示消息", "创建成功");
                                reload();
                            }
                        });
                    }
                }, {
                    text: '取消',
                    iconCls: 'icon-cancel',
                    handler: function () {
                        $('#wu-dialog').dialog('close');
                    }
                }]
            });
                }
            }
        }

    </script>
</head>
<body onload="admin()">

<div class="page_title">数据字典管理</div>
<div class="wu-toolbar-search">
    <label>类别</label><input id="dictType" class="wu-text" style="width:180px;height: 20px;">
    <label>条目</label><input id="dictItem" class="wu-text" style="width:180px;height: 20px;">
    <label>值</label><input id="dictValue" class="wu-text" style="width:180px;height: 20px;">
    <a onclick="admin();" class="easyui-linkbutton" iconCls="icon-search">开始检索</a>
</div>
<br />
<table id="table" class="data_list_table"></table>
<div id="wu-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">

    <form method="post" id="forms">
    <table class="query_form_table">
        <tr>
            <th>编号</th>
            <td>自动生成<input STYLE="display: none" name="dictId"/></td>
            <th>类别</th>
            <td><input name="dictType"/><span class="red_star">*</span><br /></td>
        </tr>
        <tr>
            <th>条目</th>
            <td><input name="dictItem" /><span class="red_star">*</span></td>
            <th>值</th>
            <td><input name="dictValue"/><span class="red_star">*</span></td>
        </tr>
        <tr>
            <th>是否可编辑</th>
            <td><input id="dictIsEditable" type="checkbox" checked /></td>
            <th>&nbsp;</th>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</div>


</div>
</body>
</html>