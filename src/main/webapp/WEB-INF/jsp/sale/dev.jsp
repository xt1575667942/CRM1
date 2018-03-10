<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>jb-aptech毕业设计项目</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <%@include file="/common/head.jsp" %>
    <script src="/js/xt/dev-list.js"/>
    <script type="text/javascript">

    </script>
</head>
<body onload="s();">
<input value="s" id="dds">
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
<table id="ssssssd" class="data_list_table">

</table>
</body>
</html>