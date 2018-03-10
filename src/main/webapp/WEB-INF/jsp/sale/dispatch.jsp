<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
    <%@include file="/common/head.jsp" %>
    <script src="/js/xt/sale-dispatch.js"/>
    <script type="text/javascript"></script>
</head>
<body onload="d()">

<div class="page_title">销售机会管理&nbsp; &gt; 指派销售机会</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="edits();">保存</button>
</div>
<div id="tableAjax"></div>
<script>
    setCurTime('t2');

</script>


</body>
</html>