<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <%@include file="/common/head.jsp" %>
    <script src="/js/xt/sale-list.js"/>
    <script type="text/javascript">

    </script>
</head>
<body onload="d()">

<div class="page_title">销售机会管理</div>
<div class="button_bar">
    <button class="common_button" onclick="help('');">帮助</button>
    <button class="common_button" onclick="to('input/jsp/sale/add');">新建</button>
    <button class="common_button" onclick="d();">查询</button>
</div>
<table class="query_form_table">
    <tr style="width: 100%;" align="center">
        <th>客户名称</th>
        <td ><input id="Cname"/></td>
        <th>概要</th>
        <td><input id="Ctitle"/></td>
        <th>联系人</th>
        <td>
            <input id="Cpeo" name="T1" size="20" />
        </td>
    </tr>
</table>
<br />
<div id="tableAjax"></div>
</body>

</html>