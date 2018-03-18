<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>jb-aptech毕业设计项目</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <%@include file="/common/head.jsp" %>
    <script type="text/javascript">

    </script>
</head>
<body onload="admin();">
<div class="wu-toolbar-search">
    <label>起始时间：</label><input id="kk" class="easyui-datebox" style="width:100px">
    <label>结束时间：</label><input id="kk2" class="easyui-datebox" style="width:100px">
    <label>关键词：</label><input id="chcCustName" class="wu-text" style="width:180px;height: 20px;">
    <a onclick="admin();" class="easyui-linkbutton" iconCls="icon-search">开始检索</a>
</div>
<div>
    <table id="ssssssd" >

    </table>
</div>
<div id="wu-dialog2" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">
    <form id="wu-form2" method="post">
<div class="button_bar">
    <button class="common_button" onclick="alert('开发失败，已归档。');window.location.href='dev.html';">终止开发</button>
    <button class="common_button" onclick="alert('用户开发成功，已添加新客户记录。');window.location.href='dev.html';">开发成功</button>
</div>
        <table class="query_form_table">
            <tr>
                <th>编号</th>
                <td><input id="pla_chc_id2" type="text" name="chcId" readonly style="border:0px;">
                    <input id="ssplid2" type="text" name="chcId"  style="display: none; border:0px;"></td>
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
            <tr>
                <th>指派给</th>
                <td>
                    <input type="text" name="chcCreateBy" readonly style="border:0px;"></td>
                <th>指派时间</th>
                <td>
                    <input type="text" name="chcDueDate"readonly style="border:0px;"></td>
            </tr>
        </table>
<br />
    </form>
    <div id="tableAjax2"></div>
<table class="data_list_table" id="table1">

</table>
</div>
<!-- 第二段-->


<div id="wu-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">
    <form id="wu-form" method="post">

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
            <tr>
                <th>指派给</th>
                <td>
                    <input type="text" name="chcCreateBy" readonly style="border:0px;"></td>
                <th>指派时间</th>
                <td>
                    <input type="text" name="chcDueDate"readonly style="border:0px;"></td>
            </tr>
        </table>
        <br />



    </form>

    <div id="tableAjax"></div>

    <div class="button_bar">
            <button class="common_button" onclick="addPlan();">保存</button>
        </div>
        <table class="query_form_table" id="table2">
            <tr>
                <th>日期</th>
                <td><input id="pdate" class="easyui-datebox" style="width:100px"/><span class="red_star">*</span></td>
                <th>计划项</th>
                <td>
                    <input id="todo" size="50" name="T2" /><span class="red_star">*</span>
                </td>
            </tr>
        </table>

</div>
<!--datagrid基本设置-->
<script type="text/javascript">
   function admin() {

       var chcCustName=$('#chcCustName').val();
       var data1=$('#kk').datebox('getValue');
       var data2=$('#kk2').datebox('getValue');
      // alert('d');
        $('#ssssssd').datagrid({
            queryParams: {
                chcCustName: chcCustName,
                data1:data1,
                data2:data2
            },
            url:'/ChanceController/listChance',
            pagination: true,//显示分页工具栏
            singleSelect:false,
            pageSize:10,
            multiSort:true,
            fitColumns:true,
            toolbar:[{
                iconCls:'icon-edit',
                text:'制定计划',
                handler:function () {
                   openAdd();
                }

            },'-',{
                iconCls:'icon-disk-edit',
                text:'执行计划',
                handler:function () {
                    openAdd2();
                }
            },'-',{
                iconCls:'icon-user-accept16',
                text:'开发成功',
                handler:function () {
                    dosussecs();
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
                    removeS();
                }
            }],
            columns:[[
                { checkbox:true},
                { field:'chcId',title:'编号',width:50,sortable:true},
                { field:'chcCustName',title:'客户名称',width:120,sortable:true},
                { field:'chcTitle',title:'概要',width:150,sortable:true},
                { field:'chcLinkman',title:'联系人',width:100,sortable:true},
                { field:'chcTel',title:'联系人电话',width:80,sortable:true},
                { field:'chcCreateDate',title:'创建时间',width:100,sortable:true},
                { field:'chcStaus',title:'状态',width:100,sortable:true},
            ]]
        });
        $('#chcCustName').val("");
        $('#kk').val("");
        $('#kk2').val();
    };


   /**
    * Name 删除记录
    */
   function dozhixing(){

   }

   /**
    * Name 打开添加窗口
    */
   function openAdd(){
       var items = $('#ssssssd').datagrid('getSelections');
       var ids = [];
       var vk = [];
       $(items).each(function(){
           ids.push(this.chcId);
           vk.push(this.chcStaus);
       });
       var ik=vk.indexOf("开发成功");
       //alert(vk);

       if(ids.length==0){
           $.messager.alert("提示消息", "您未选中任何记录，不能进行该操作!");
       }else if(ids.length==1) {
           if (ik==0){
               $.messager.alert("单数据操作", "这一条数据已经开发成功，不能执行此操作");
           }else{
               $('#wu-form').form('load',items[0]);
               db(ids);
               $('#wu-dialog').dialog({
                   closed: false,
                   modal:true,
                   title: "制定计划",
                   width:800,
                   height:500,
                   buttons: [ {
                       text: '取消',
                       iconCls: 'icon-cancel',
                       handler: function () {
                           $('#wu-dialog').dialog('close');
                       }
                   }]
               });
           }

           //查询单个操作
       }else{
           $.messager.alert("提示消息", "您选中了"+ids.length+"条数据,此操作不支持多选操作");
       }


   }






function addPlan() {
    var todo = $("#todo").val();
    var pdate =$('#pdate').datebox('getValue');
    var pla_chc_id  = $("#pla_chc_id ").val();

    $.ajax({
        data:"plaChcId="+pla_chc_id+"&plaTodo="+todo+"&plaDate="+pdate,
        type: "POST",
        dataType: 'TEXT',
        url: "/PlanController/addPlan",
        error: function (data) {
            alert("出错了！！:");
        },
        success: function (data) {
            // alert("KKJJNJJJJJJ");
            $("#todo").val("");
             $('#pdate').datebox("");

        }
    });
    db(pla_chc_id);
}


   //动态的创建一个table
   function createShowingTable(data) {
       var tableStr = "<table class=\"data_list_table\" id=\"table1\">";
       tableStr = tableStr
           + "<tr>"
           +"<th width=\"150px\">日期</th>"
           +"<th height=\"31\">计划项</th>"
           +"</tr>";

       var dataObj=eval("("+data+")");
       for(var i=0;i<dataObj.length;i++){
           tableStr = tableStr
               + "<form id='ff"+dataObj[i].plaId+"' method=\"post\"><tr id='"+dataObj[i].plaId+"'>"
               +" <td class='list_data_text' height='24'>"+dataObj[i].plaDate+"</td>"
               +"<td  class='list_data_ltext' height='24'><input id='s"+dataObj[i].plaId+"' size='50' value='"+dataObj[i].plaTodo+"' />"
               + "<button class='common_button' onclick='tj("+dataObj[i].plaId+");'>编辑</button>"
               + "<button class='common_button' onclick='removeValues("+dataObj[i].plaId+");'>删除</button>"
               +" </td></tr></form> ";
       }
       if(data.length==2){
           tableStr = tableStr +"<tr  >暂无记录</tr>";
       }

       tableStr = tableStr+ "</table>";
       //添加到div中
       $("#tableAjax").html(tableStr);
   }



   function db(ids) {
       alert(ids);
       $.ajax({
           data:"plaChcId="+ids,
           type: "POST",
           dataType: 'text',
           url: "/PlanController/listPlan",
           error: function (data) {
               alert("出错了！！:");
           },
           success: function (data) {
               createShowingTable(data);
           }
       });
   }
   
   
   
   function removeValues(ids) {
       $.ajax({
           data:"plaId="+ids,
           type: "POST",
           dataType: 'text',
           url: "/PlanController/delPlan",
           error: function (data) {
               alert("出错了！！:");
           },
           success: function (data) {
               document.getElementById(''+ids+'').style.display = "none";
           }
       });
   }


    function tj(id) {

        var pValue = $("#s"+id).val();
        var ssplid = $("#ssplid2").val();
        alert("dsd");
        alert(ssplid);
        //alert(pValue);
        $("#ff"+id).form({
            url:"/PlanController/editPlan",
            onSubmit: function(param){
                param.plaId = id;
                param.plaTodo = pValue;
            },
        success:function(data){
            db2(ssplid);
        }
    });

// submit the form
        $("#ff"+id).submit();
    }







   function openAdd2(){
       var items = $('#ssssssd').datagrid('getSelections');
       var ids = [];
       $(items).each(function(){
           ids.push(this.chcId);
       });

       if(ids.length==0){
           $.messager.alert("提示消息", "您未选中任何记录，不能进行该操作");
       }else if(ids.length==1) {
           $('#wu-form2').form('load',items[0]);
           db2(ids);
           $('#wu-dialog2').dialog({
               closed: false,
               modal:true,
               title: "执行计划",
               width:800,
               height:500,
               buttons: [{
                   text: '确定',
                   iconCls: 'icon-ok',
                   handler: add
               }, {
                   text: '取消',
                   iconCls: 'icon-cancel',
                   handler: function () {
                       $('#wu-dialog').dialog('close');
                   }
               }]
           });
           //查询单个操作
       }else{
           $.messager.alert("提示消息", "抱歉只能选择一条记录进行操作");
       }


   }





   //动态的创建一个table
   function createShowingTable2(data) {
       var tableStr = "<table class=\"data_list_table\" id=\"table1\">";
       tableStr = tableStr
           + "<tr>"
           +"<th >日期</th>"
           +"<th>计划项</th>"
           +"<th>执行效果</th>"
           +"</tr>";

       var dataObj=eval("("+data+")");
       for(var i=0;i<dataObj.length;i++){
           tableStr = tableStr
               + "<form id='XHG"+dataObj[i].plaId+"' method=\"post\"><tr >"
               +" <td class='list_data_text' height='24'>"+dataObj[i].plaDate+"</td>"
               +" <td class='list_data_text' height='24'>"+dataObj[i].plaTodo+"</td>"
               +"<td class='list_data_ltext'><input id='xt"+dataObj[i].plaId+"' value='"+dataObj[i].plaResult+"'/><button class='common_button' onclick='tj2("+dataObj[i].plaId+");'>保存</button> </td></tr></form> ";
       }
       if(data.length==2){
           tableStr = tableStr +"<tr  >暂无记录</tr>";
       }

       tableStr = tableStr+ "</table>";
       //添加到div中
       $("#tableAjax2").html(tableStr);
   }

   function db2(ids) {
       alert(ids);
       $.ajax({
           data:"plaChcId="+ids,
           type: "POST",
           dataType: 'text',
           url: "/PlanController/listPlan",
           error: function (data) {
               alert("出错了！！:");
           },
           success: function (data) {
               createShowingTable2(data);
           }
       });
   }




   function tj2(id) {

       var pValue = $("#xt"+id).val();
       var ssplid = $("#ssplid").val();

       //alert(pValue);
       $("#XHG"+id).form({
           url:"/PlanController/editPlan",
           onSubmit: function(param){
               param.plaId = id;
               param.plaResult = pValue;
           },
           success:function(data){
               //db2(ssplid);
               alert(ssplid);
           }
       });

// submit the form
       $("#XHG"+id).submit();
   }
   
   
   
   //开发成功
    function dosussecs() {
        //alert("dd");
        var items = $('#ssssssd').datagrid('getSelections');
        var sta = [];
        $(items).each(function() {
            sta.push(this.chcStaus);
        });

        var num=sta.indexOf("开发成功");
       // alert(num);
        if(num==0&&sta.length==1){
            $.messager.alert("单数据操作", "这一条数据已经开发成功，不能执行此操作");
        }else if(num==0&&sta.length>1){
            $.messager.alert("多选数据操作", "这"+sta.length+"条数据中含有开发成功的数据，不能执行此操作");
        } else{
            //alert("dsa");
            if(items==""){
                $.messager.alert("提示消息", "请选择数据进行操作");
            }else{
                $(items).each(function(){
                    var ids = [];
                    ids.push(this.chcId);
                    $.ajax({
                        data:"chcId="+ids+"&chcStaus=开发成功",
                        url: "/ChanceController/editChanceStas",
                        type: "POST",
                        dataType: 'text',
                        success: function (data) {
                            $.messager.alert("提示消息", "开发成功!");
                            reload();
                        }
                    });
                });
            }
        }


        //reload();
    }




</script>
</body>
</html>
