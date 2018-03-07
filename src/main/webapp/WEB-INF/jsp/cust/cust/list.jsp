<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>jb-aptech毕业设计项目</title>
	<%@include file="/common/head.jsp" %>
</head>
<body>

<div class="page_title">客户信息管理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="reload();">查询</button>
</div>
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td><input /></td>
		<th>名称</th>
		<td><input /></td>
		<th>地区</th>
		<td>
			<select>
				<option>全部</option>
				<option>北京</option>
				<option>华北</option>
				<option>中南</option>
				<option>东北</option>
				<option>西部</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>客户经理</th>
		<td><input /></td>
		<th>客户等级</th>
		<td>
			<select>
				<option>全部</option>
				<option>战略合作伙伴</option>
				<option>合作伙伴</option>
				<option>大客户</option>
				<option>普通客户</option>
			</select>
		</td>
		<th>　</th>
		<td>　</td>
	</tr>
</table>
<br />
<table class="data_list_table">
	<tr>
		<th>序号</th>
		<th>客户编号</th>
		<th>名称</th>
		<th>地区</th>
		<th>客户经理</th>
		<th>客户等级</th>
		<th>操作</th>
	</tr>
	<tr>
		<td class="list_data_number">1</td>
		<td class="list_data_text">KH071202001</td>
		<td class="list_data_ltext">聪海信息科技有限公司</td>
		<td class="list_data_text">北京</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">战略合作伙伴</td>
		<td class="list_data_op">
			<img onclick="to('edit.html');" title="编辑" src="../../images/bt_edit.gif" class="op_button" />
			<img onclick="to('linkman.html');" title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('activities.html');" title="交往记录" src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('orders.html');" title="历史订单" src="../../images/bt_orders.gif" class="op_button" />

			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />

		</td>
	</tr>
	<tr>
		<td class="list_data_number">2</td>
		<td class="list_data_text">KH071201008</td>
		<td class="list_data_ltext">北京明科科技有限公司</td>
		<td class="list_data_text">北京</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">普通客户</td>
		<td class="list_data_op">
			<img onclick="to('edit.html');" title="编辑" src="../../images/bt_edit.gif" class="op_button" />
			<img onclick="to('linkman.html');" title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('activities.html');" title="交往记录" src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('orders.html');" title="历史订单" src="../../images/bt_orders.gif" class="op_button" />

			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<td class="list_data_number">3</td>
		<td class="list_data_text">KH071201007</td>
		<td class="list_data_ltext">太阳药业</td>
		<td class="list_data_text">华北</td>
		<td class="list_data_text">旺财</td>
		<td class="list_data_text">重点开发客户</td>
		<td class="list_data_op">
			<img onclick="to('edit.html');" title="编辑" src="../../images/bt_edit.gif" class="op_button" />&nbsp;<img onclick="to('linkman.html');" title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('activities.html');" title="交往记录" src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('orders.html');" title="历史订单" src="../../images/bt_orders.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<td class="list_data_number">4</td>
		<td class="list_data_text">KH071201006</td>
		<td class="list_data_ltext">云南天河烟草公司</td>
		<td class="list_data_text">中南</td>
		<td class="list_data_text">球球</td>

		<td class="list_data_text">重点开发客户</td>
		<td class="list_data_op">
			<img onclick="to('edit.html');" title="编辑" src="../../images/bt_edit.gif" class="op_button" />
			<img onclick="to('linkman.html');" title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('activities.html');" title="交往记录" src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('orders.html');" title="历史订单" src="../../images/bt_orders.gif" class="op_button" /></td>
	</tr>
	<tr>
		<td class="list_data_number">5</td>
		<td class="list_data_text">KH071201005</td>
		<td class="list_data_ltext">北京天桥信息技术有限公司</td>
		<td class="list_data_text">北京</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">大客户</td>
		<td class="list_data_op">
			<img onclick="to('edit.html');" title="编辑" src="../../images/bt_edit.gif" class="op_button" />
			<img onclick="to('linkman.html');" title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('activities.html');" title="交往记录" src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('orders.html');" title="历史订单" src="../../images/bt_orders.gif" class="op_button" />

			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" /></td>
	</tr>
	<tr>
		<td class="list_data_number">6</td>
		<td class="list_data_text">KH071201004</td>
		<td class="list_data_ltext">北京白羽有限责任公司</td>
		<td class="list_data_text">北京</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">普通客户</td>
		<td class="list_data_op">
			<img onclick="to('edit.html');" title="编辑" src="../../images/bt_edit.gif" class="op_button" />
			<img onclick="to('linkman.html');" title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('activities.html');" title="交往记录" src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('orders.html');" title="历史订单" src="../../images/bt_orders.gif" class="op_button" />

			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" /></td>
	</tr>
	<tr>
		<td class="list_data_number" height="15">7</td>
		<td class="list_data_text" height="15">KH071201003</td>
		<td class="list_data_ltext" height="15">北京神光培训</td>
		<td class="list_data_text" height="15">北京</td>
		<td class="list_data_text" height="15">阿咪</td>
		<td class="list_data_text" height="15">大客户</td>
		<td class="list_data_op" height="15">
			<img onclick="to('edit.html');" title="编辑" src="../../images/bt_edit.gif" class="op_button" />&nbsp;<img onclick="to('linkman.html');" title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('activities.html');" title="交往记录" src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('orders.html');" title="历史订单" src="../../images/bt_orders.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<td class="list_data_number" height="35">8</td>
		<td class="list_data_text" height="35">KH071201002</td>
		<td class="list_data_ltext" height="35">潍坊青鸟华光</td>
		<td class="list_data_text" height="35">华北</td>
		<td class="list_data_text" height="35">旺财</td>
		<td class="list_data_text" height="35">合作伙伴</td>
		<td class="list_data_op" height="35">
			<img onclick="to('edit.html');" title="编辑" src="../../images/bt_edit.gif" class="op_button" />&nbsp;<img onclick="to('linkman.html');" title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('activities.html');" title="交往记录" src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('orders.html');" title="历史订单" src="../../images/bt_orders.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<td class="list_data_number">9</td>
		<td class="list_data_text">KH071201001</td>
		<td class="list_data_ltext">青鸟无限数码</td>
		<td class="list_data_text">北京</td>
		<td class="list_data_text">周洁轮</td>
		<td class="list_data_text">合作伙伴</td>
		<td class="list_data_op">
			<img onclick="to('edit.html');" title="编辑" src="../../images/bt_edit.gif" class="op_button" />&nbsp;<img onclick="to('linkman.html');" title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('activities.html');" title="交往记录" src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('orders.html');" title="历史订单" src="../../images/bt_orders.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<td class="list_data_number">10</td>
		<td class="list_data_text">KH071130003</td>
		<td class="list_data_ltext">北京大学</td>
		<td class="list_data_text">北京</td>
		<td class="list_data_text">孙小美</td>
		<td class="list_data_text">战略合作伙伴</td>
		<td class="list_data_op">
			<img onclick="to('edit.html');" title="编辑" src="../../images/bt_edit.gif" class="op_button" />&nbsp;<img onclick="to('linkman.html');" title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('activities.html');" title="交往记录" src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('orders.html');" title="历史订单" src="../../images/bt_orders.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<th colspan="100" class="pager">
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