<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>jb-aptech毕业设计项目</title>
	<%@include file="/common/head.jsp" %>
</head>
<body>

<div class="page_title">客户开发计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
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
		<th>状态</th>
		<th>操作</th>
	</tr>
	<tr>
		<td class="list_data_number">1</td>
		<td class="list_data_text">睿智数码</td>
		<td class="list_data_ltext">采购笔记本电脑意向</td>
		<td class="list_data_text">刘先生</td>
		<td class="list_data_text">13729239239</td>
		<td class="list_data_text">2007年12月06日</td>
		<td class="list_data_text">开发中</td>
		<td class="list_data_op">
			<img onclick="to('dev_plan.html');" title="制定计划" src="../images/bt_plan.gif" class="op_button" />
			<img onclick="to('dev_execute.html');" title="执行计划" src="../images/bt_feedback.gif" class="op_button" />
			<img onclick="alert('用户开发成功，已添加新客户记录。');" title="开发成功" src="../images/bt_yes.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<td class="list_data_number">2</td>
		<td class="list_data_text">泰宝实业</td>
		<td class="list_data_ltext">采购笔记本电脑意向</td>
		<td class="list_data_text">马先生</td>
		<td class="list_data_text">13333239239</td>
		<td class="list_data_text">2007年11月16日</td>
		<td class="list_data_text">已归档</td>
		<td class="list_data_op">
			<img onclick="to('dev_detail.html');" title="查看" src="../images/bt_detail.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<th colspan="10" class="pager">
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