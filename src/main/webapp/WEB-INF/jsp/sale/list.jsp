<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>jb-aptech毕业设计项目</title>
	<%@include file="/common/head.jsp" %>
</head>
<body>

<div class="page_title">销售机会管理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="to('input/jsp/sale/add');">新建</button>
	<button class="common_button" onclick="reload();">查询</button>
</div>
<table class="query_form_table">
	<tr>
		<th>客户名称</th>
		<td><input /></td>
		<th>概要</th>
		<td><input /></td>
		<th>联系人</th>
		<td>
			<input name="T1" size="20" />
		</td>
	</tr>
</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户名称</th>
		<th>概要</th>
		<th>联系人</th>
		<th>联系人电话</th>
		<th>创建时间</th>
		<th>操作</th>
	</tr>
	<tr>
		<td class="list_data_number">1</td>
		<td class="list_data_text">睿智数码</td>
		<td class="list_data_ltext">采购笔记本电脑意向</td>
		<td class="list_data_text">刘先生</td>
		<td class="list_data_text">13729239239</td>
		<td class="list_data_text">2007年12月06日</td>
		<td class="list_data_op">
			<img onclick="to('dispatch.html');" title="指派" src="images/bt_linkman.gif" class="op_button" />
			<img onclick="to('edit.html');" title="编辑" src="images/bt_edit.gif" class="op_button" />
			<img onclick="del('“销售机会：采购笔记本电脑意向”');" title="删除" src="images/bt_del.gif" class="op_button" />

		</td>
	</tr>
	<tr>
		<th colspan="7" class="pager">
			<div class="pager">
				共59条记录 每页<input value="10" size="2" />条
				第<input value="1" size="2"/>页/共5页
				<a href="#">第一页</a>
				<a href="#">上一页</a>
				<a href="#">下一页</a>
				<a href="#">最后一页</a>
				转到<input value="1" size="2" />页
				<button width="20" onclick="reload();">GO</button>
			</div>
		</th>
	</tr>
</table>
</body>
</html>