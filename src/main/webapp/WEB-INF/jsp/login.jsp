<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录-有点</title>
    <link rel="stylesheet" type="text/css" href="/css/public.css" />
    <link rel="stylesheet" type="text/css" href="/css/page.css" />
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/public.js"></script>
    <%@include file="/common/head.jsp"%>
    <script type="text/javascript">
        function login() {
            var usrName = $('#usrName').val();
            var usrPassword = $('#usrPassword').val();
            if(usrName!=null||usrName!=""){
                 if(usrPassword!=null||usrPassword!=""){
                     $("#ffs").form({
                         url:"/UserController/loadLogin",
                         onSubmit: function(param){
                             param.usrName = usrName;
                             param.usrPassword = usrPassword;
                         },
                         success:function(data){
                             if(data==1){
                                 $.messager.alert("提示消息", "您输入的账号或密码有误");
                             }else{
                                 to("/input/jsp/index");
                             }
                         }

                     });

                     $("#ffs").submit();
                 }
            }
        }
    </script>
</head>
<body>


<!-- 登录body -->
<div class="logDiv">
    <div class="logGet">
        <!-- 头部提示信息 -->
        <div class="logD logDtip">
            <p class="p1">登录</p>
            <p class="p2">有点人员登录</p>
        </div>
        <form id="ffs" method="post">
        <!-- 输入框 -->
        <div class="lgD">
            <img class="img1" src="/images/logName.png" /><input type="text"
                                                                 id="usrName"
                                                             placeholder="输入用户名" />
        </div>
        <div class="lgD">
            <img class="img1" src="/images/logPwd.png" /><input type="text"
                                                                id="usrPassword"
                                                            placeholder="输入用户密码" />
        </div>
        </form>
        <div class="logC">
            <button onclick="login()">登 录</button>
        </div>
    </div>
</div>
<!-- 登录body  end -->

<!-- 登录页面底部end -->
</body>
</html>