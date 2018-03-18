<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <%@include file="/common/head.jsp" %>
    <script type="text/javascript">

        function admin() {
            var chcCustName=$('#chcCustName').val();
            var chcLinkman=$('#chcLinkman').val();
            var chcTitle=$('#chcTitle').val();
            // alert('d');
            $('#ssssssd').datagrid({
                queryParams: {
                    chcCustName: chcCustName,
                    chcLinkman:chcLinkman,
                    chcTitle:chcTitle
                },
                url:'/ChanceController/listChance2',
                pagination: true,//显示分页工具栏
                singleSelect:false,
                pageSize:10,
                multiSort:true,
                fitColumns:true,
                toolbar:[{
                    iconCls:'icon-save',
                    text:'创建机会',
                    handler:function () {
                       openAdd();
                    }

                },'-',{
                    iconCls:'icon-remove',
                    text:'删除',
                    handler:function () {
                        removechance2()
                    }

                },'-',{
                    iconCls:'icon-edit',
                    text:'编辑',
                    handler:function () {
                        openedit();
                    }

                },'-',{
                    iconCls:'icon-disk-edit',
                    text:'指派',
                    handler:function () {
                        openAdd2();
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
                    { field:'chcId',title:'编号',width:50,sortable:true},
                    { field:'chcCustName',title:'客户名称',width:120,sortable:true},
                    { field:'chcTitle',title:'概要',width:150,sortable:true},
                    { field:'chcLinkman',title:'联系人',width:100,sortable:true},
                    { field:'chcTel',title:'联系人电话',width:80,sortable:true},
                    { field:'chcCreateDate',title:'创建时间',width:100,sortable:true}
                ]]
            });
            $('#chcCustName').val("");
            $('#chcLinkman').val("");
            $('#chcTitle').val("");

        };






        function removechance2() {
                //把你选中的 数据查询出来。
                var selectRows = $('#ssssssd').datagrid("getSelections");
                if (selectRows.length < 1) {
                    $.messager.alert("提示消息", "请选中要删的数据!");
                    return;
                }

                //真删除数据
                //提醒用户是否是真的删除数据
                $.messager.confirm("确认消息", "您确定要删除信息吗？", function (r) {
                    if (r) {
                        var items = $('#ssssssd').datagrid('getSelections');

                        //alert("dsa");
                        $(items).each(function(){
                            var ids = [];
                            ids.push(this.chcId);
                        $.ajax({
                            data:"chcId="+ids,
                            type: "POST",
                            dataType: 'text',
                            url: "/ChanceController/delChance",
                            error: function (data) {
                                $.messager.alert("删除失败~~", data);
                           },
                            success: function (data) {
                                $.messager.alert("提示消息", "删除成功");
                                                          }
                        });
                        });
                        //刷新表格，去掉选中状态的 那些行。
                        reload();
                    }
                });
            }


        /**
         * Name 打开添加窗口
         */
        function openAdd(){
            $('#dueIid2').combobox({
                url: "/UserController/listUser2",
                valueField:'usrId',
                textField:'usrName'
            });
                $('#wu-dialog').dialog({
                    closed: false,
                    modal:true,
                    title: "创建销售机会",
                    width:800,
                    height:500,
                    buttons: [{
                        text: '创建',
                        iconCls: 'icon-ok',
                        handler: function () {
                            addchance();
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

        /**
         * Name 打开添加窗口
         */
        function openedit(){
            var items = $('#ssssssd').datagrid('getSelections');
            var ids = [];
            $(items).each(function(){
                ids.push(this.chcId);
            });
            if(ids.length==0){
                $.messager.alert("提示消息", "请选择数据进行操作");
            }else if(ids.length>1){
                $.messager.alert("提示消息", "请选择一条数据进行操作");
            }else{
                $('#dueIid2').combobox({
                    url: "/UserController/listUser2",
                    valueField:'usrId',
                    textField:'usrName'
                });
                $('#ff').form('load',items[0]);
                $('#wu-dialog').dialog({
                    closed: false,
                    modal:true,
                    title: "修改",
                    width:800,
                    height:500,
                    buttons: [{
                        text: '修改',
                        iconCls: 'icon-ok',
                        handler: function () {
                            alert("d");
                            editchance();
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

        //创建销售机会的方法
        function addchance() {
            $('#ff').form({
                url:"/ChanceController/addChance",
                success:function(data){
                    $.messager.confirm("确认消息", "创建成功,您是否要继续创建销售机会？", function (r) {
                        if(r){

                        }else{
                            reload();
                        }
                    });
                    }
            });
            $("#ff").submit();
        }

        //修改销售机会的方法
        function editchance() {
            $('#ff').form({
                url:"/ChanceController/editChance",
                success:function(data){
                    $.messager.alert("提示消息", "修改成功");
                    reload();
                }
            });
            $("#ff").submit();
        }




        /**
         * Name 打开添加窗口
         */
        function openAdd2(){

            var items = $('#ssssssd').datagrid('getSelections');
            var ids = [];
            $(items).each(function(){
                ids.push(this.chcId);
            });

            if(ids.length==0){
                alert('您未选中任何记录，不能进行该操作')
            }else if(ids.length==1) {

                    $('#dueIid').combobox({
                    url: "/UserController/listUser2",
                    valueField:'usrId',
                    textField:'usrName'
                });



                $('#ff2').form('load',items[0]);
                $('#wu-dialog2').dialog({
                    closed: false,
                    modal:true,
                    title: "指定计划",
                    width:800,
                    height:400,
                    buttons: [{
                        text: '确定',
                        iconCls: 'icon-ok',
                        handler: function () {

                            var ssplid = $('#ssplid').val();
                            var dueIid = $('#dueIid').val();
                            alert("dad"+dueIid);
                            if(dueIid=="--- 请选择 ---"){
                                $.messager.alert("提示消息", "请选择您要指派给的人");
                            }else{
                                $("#kkj").form({
                                    url:"/ChanceController/editChanceStas",
                                    onSubmit: function(param){
                                        param.chcId = ssplid;
                                        param.chcDueId = dueIid;
                                        param.chcStaus='开发中';
                                    },

                                    success:function(data){
                                        $.messager.alert("提示消息", "指派成功!");
                                        reload();
                                    }
                                });

                                $("#kkj").submit();
                            }


                        }
                    }, {
                        text: '取消',
                        iconCls: 'icon-cancel',
                        handler: function () {
                            $('#wu-dialog2').dialog('close');
                        }
                    }]
                });
                //查询单个操作
            }else{
                alert("抱歉只能选择一条记录进行操作");
            }


        }


    </script>
</head>
<body onload="admin()">

<div class="wu-toolbar-search">
    <label>联系人</label><input id="chcLinkman" class="wu-text" style="width:180px;height: 20px;">
    <label>客户名称</label><input id="chcCustName" class="wu-text" style="width:180px;height: 20px;">
    <label>概要</label><input id="chcTitle" class="wu-text" style="width:180px;height: 20px;">
    <a onclick="admin();" class="easyui-linkbutton" iconCls="icon-search">开始检索</a>
</div>
<br />
<div >
    <table id="ssssssd" >

    </table>

</div>
<div id="wu-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">

    <form id="ff" method="post">
<table class="query_form_table">
    <tr>
        <th>编号</th>
        <td>自动生成</td>
        <th>机会来源</th>
        <td>
            <input  name="chcSource" size="20" /></td>
    </tr>
    <tr>
        <th>客户名称</th>
        <td><input name="chcCustName" /><span class="red_star">*</span></td>
        <th>成功机率</th>
        <td><input name="chcRate"/><span class="red_star">*</span></td>
    </tr>
    <tr>
        <th>概要</th>
        <td colspan="3"><input name="chcTitle" size="52" /><span class="red_star">*</span></td>
    </tr>
    <tr>
        <th>联系人</th>
        <td><input name="chcLinkman" size="20" /></td>
        <th>联系人电话</th>
        <td><input  name="chcTel" size="20" /></td>
    </tr>
    <tr>
        <th>机会描述</th>
        <td colspan="3"><textarea rows="6" cols="50" name="chcDesc"></textarea><span class="red_star">*</span></td>
    </tr>
    <tr>
        <th>创建人</th>
        <td><input name="chcCreateBy" value="${user.usrName}" style="border: 0px;" size="20" />
            <input name="chcCreateById" value="${user.usrId}"  style="display: none" /><span class="red_star">*</span></td>
        <th>创建时间</th>
        <td>系统默认</td>
    </tr>
</table>
<br />
<table disabled class="query_form_table" id="table1">
    <tr>
        <th>指派给</th>
        <td>
            <input id="dueIid2" name="chcDueIid" ></td>
        <th>指派时间</th>
        <td>
            系统默认</td>
    </tr>
</table>
    </form>
</div>


<!--2-->

<div id="wu-dialog2" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">

<div class="page_title">销售机会管理&nbsp; &gt; 指派销售机会</div>
<div class="button_bar">
    <button class="common_button" onclick="help('');">帮助</button>
    <button class="common_button" onclick="back();">返回</button>
    <button class="common_button" onclick="save('list.html');">保存</button>
</div>
    <form id="ff2" method="post">
    <table class="query_form_table">
        <tr>
            <th>编号</th>
            <td><input id="pla_chc_id" type="text" name="chcId" readonly style="border:0px;">
                <input id="ssplid" type="text" name="chcId"  style="display: none; border:0px;"></td>
            <th>机会来源</th>
            <td><input type="text" name="chcSource" readonly style="border:0px;"> </td>
        </tr>
        <tr>
            <th>客户名称</th>
            <td><input type="text" name="chcCustName" readonly style="border:0px;"></td>
            <th>成功机率（%）</th>
            <td>&nbsp;<input type="text" name="chcRate" readonly style="border:0px;"></td>
        </tr>
        <tr>
            <th>概要</th>
            <td colspan="3"><input type="text" name="chcTitle" readonly style="border:0px;"></td>
        </tr>
        <tr>
            <th>联系人</th>
            <td> <input type="text" name="chcLinkman" readonly style="border:0px;"></td>
            <th>联系人电话</th>
            <td><input type="text" name="chcTel"readonly style="border:0px;"></td>
        </tr>
        <tr>
            <th>机会描述</th>
            <td colspan="3"><input type="text" name="chcDesc" readonly style="border:0px;"></td>
        </tr>
        <tr>
            <th>创建人</th>
            <td><input type="text" name="chcLinkman" readonly style="border:0px;"></td>
            <th>创建时间</th>
            <td><input type="text" name="chcCreateDate" readonly style="border:0px;"></td>
        </tr>
    </table>
    </form>
    <br />
    <form id="kkj" method="post">
        <table disabled class="query_form_table" id="table2">
            <tr>
                <th>指派给</th>
                <td>
                    <input id="dueIid" name="dept" >
                </td>
                <th>指派时间</th>
                <td>
                    <input value="系统默认" name="T20" readonly size="20" /><span class="red_star">*</span></td>
            </tr>
        </table>
    </form>
</div>
</body>

</html>