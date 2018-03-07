<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>jb-aptech毕业设计项目</title>
    <%@include file="/common/head.jsp" %>
</head>
<body>

<div class="page_title">销售机会管理&nbsp; &gt; 新建销售机会</div>
<div class="button_bar">
    <button class="common_button" onclick="help('');">帮助</button>
    <button class="common_button" onclick="back();">返回</button>
    <button class="common_button" onclick="add('list.html');">保存</button>
</div>
<table class="query_form_table">
    <tr>
        <th>编号</th>
        <td><input readonly /></td>
        <th>机会来源</th>
        <td>
            <input name="T4" size="20" /></td>
    </tr>
    <tr>
        <th>客户名称</th>
        <td><input /><span class="red_star">*</span></td>
        <th>成功机率</th>
        <td><input /><span class="red_star">*</span></td>
    </tr>
    <tr>
        <th>概要</th>
        <td colspan="3"><input name="T0" size="52" /><span class="red_star">*</span></td>
    </tr>
    <tr>
        <th>联系人</th>
        <td><input name="T21" size="20" /></td>
        <th>联系人电话</th>
        <td><input name="T5" size="20" /></td>
    </tr>
    <tr>
        <th>机会描述</th>
        <td colspan="3"><textarea rows="6" cols="50" name="S1"></textarea><span class="red_star">*</span></td>
    </tr>
    <tr>
        <th>创建人</th>
        <td><input name="T19" value="刘颖" readonly size="20" /><span class="red_star">*</span></td>
        <th>创建时间</th>
        <td><input id="t1" name="T15" readonly size="20" /><span class="red_star">*</span></td>
    </tr>
</table>
<br />
<table disabled class="query_form_table" id="table1">
    <tr>
        <th>指派给</th>
        <td>
            <select name="D1">
                <option>请选择...</option>
                <option>小明</option>
                <option>旺财</option>
                <option>球球</option>
                <option>孙小美</option>
                <option>周洁轮</option>
            </select> <span class="red_star">*</span></td>
        <th>指派时间</th>
        <td>
            <input id="t2" name="T20" readonly size="20" /><span class="red_star">*</span></td>
    </tr>
</table>
<script>
    setCurTime('t1');
    setCurTime('t2');
</script>
</body>
</html>