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
<div id="wu-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">
    <form id="wu-form" method="post">
        <div class="page_title">客户开发计划 &gt; 制定计划</div>
        <div class="button_bar">
            <button class="common_button" onclick="to('dev_execute.html');">执行计划</button>
        </div>
        <table class="query_form_table">
            <tr>
                <th>编号</th>
                <td><input type="text" name="chcId" readonly style="border:0px;"> </td>
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
        <table class="data_list_table" id="table1">
            <tr>
                <th width="150px">日期</th>
                <th height="31">计划项</th>
            </tr>
            <tr>
                <td class="list_data_text" height="24">2008年01月18日</td>
                <td class="list_data_ltext" height="24"><input size="50" value="初步接触，了解客户意向。" />
                    <button class="common_button" onclick="save('dev_plan.html');">保存</button>
                    <button class="common_button" onclick="del('');">删除</button>
                </td>
            </tr>
            <tr>
                <td class="list_data_text">2008年02月22日</td>
                <td class="list_data_ltext"><input size="50" value="推介产品。" name="T1" />
                    <button class="common_button" onclick="save('dev_plan.html');">保存</button>
                    <button class="common_button" onclick="del('');">删除</button>
                </td>
            </tr>
        </table>
        <div class="button_bar">
            <button class="common_button" onclick="add('dev_plan.html');">保存</button>
        </div>
        <table class="query_form_table" id="table2">
            <tr>
                <th>日期</th>
                <td><input /><span class="red_star">*</span></td>
                <th>计划项</th>
                <td>
                    <input size="50" name="T2" /><span class="red_star">*</span>
                </td>
            </tr>
        </table>
    </form>
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

                }
            },'-',{
                iconCls:'icon-user-accept16',
                text:'开发成功',
                handler:function () {
                    remove();
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
       $(items).each(function(){
           ids.push(this.chcId);
       });

       if(ids.length==0){
           alert('您未选中任何记录，不能进行该操作')
       }else if(ids.length==1) {
           alert('一条记录');
           //to("/input/jsp/sale/dev_plan");
           $('#wu-form').form('load',items[0]);
           $('#wu-dialog').dialog({
               closed: false,
               modal:true,
               title: "指定计划",
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
           alert("抱歉只能选择一条记录进行操作");
       }


   }




</script>
</body>
</html>
