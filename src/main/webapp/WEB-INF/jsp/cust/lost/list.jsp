<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>jb-aptech毕业设计项目</title>
	<%@include file="/common/head.jsp" %>
</head>
<body>

<div class="page_title">客户流失管理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="reload();">查询</button>
</div>
<table class="query_form_table">
	<tr>
		<th>客户</th>
		<td><input /></td>
		<th>客户经理</th>
		<td><input /></td>
		<th>状态</th>
		<td>
			<select>
				<option>全部</option>
				<option>预警</option>
				<option>暂缓流失</option>
				<option>确认流失</option>
			</select>
		</td>
	</tr>
</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户</th>
		<th>客户经理</th>
		<th>上次下单时间</th>
		<th>确认流失时间</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<tr>
		<td class="list_data_number">1</td>
		<td class="list_data_text">阳光实业</td>
		<td class="list_data_ltext">球球</td>
		<td class="list_data_text">2005年12月07日</td>
		<td class="list_data_text">　</td>
		<td class="list_data_text">暂缓流失</td>
		<td class="list_data_op">
			<img onclick="to('confirm.html');" title="确认流失" src="../../images/bt_confirm.gif" class="op_button" />
			<img onclick="to('relay.html');" title="暂缓流失" src="../../images/bt_relay.gif" class="op_button" />

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