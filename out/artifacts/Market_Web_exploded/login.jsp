<%@ page language="java" import="java.util.*,java.net.*" contentType="text/html; charset=utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>

<body>
    <div class="logo">
        <a href="#"><img src="assets/logo.png" alt="" /></a>
    </div>
<h1>用户登录</h1>
<hr>
<%
    request.setCharacterEncoding("utf-8");
    String username="";
    String password = "";
    Cookie[] cookies = request.getCookies();
    //如果cookie对象非空，在登入界面上显示登入信息；
    if(cookies!=null&&cookies.length>0) {
        for(Cookie c:cookies) {
            if(c.getName().equals("username")) {
                username =  URLDecoder.decode(c.getValue(),"utf-8");
            }
            if(c.getName().equals("password")) {
                password =  URLDecoder.decode(c.getValue(),"utf-8");
            }
        }
    }
%>
<form name="loginForm" action="dologin.jsp" method="post">
    <table>
        <tr>
            <td>用户名：</td><!-- value里面的username是你在text输入栏中输入的值叫username-->
            <td><input type="text" name="username" value="<%=username %>"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password" value="<%=password %>" /></td>
        </tr>
        <tr>
            <td colspan="2"><input type="checkbox" name="isUseCookie" checked="checked"/>十天内记住我的登录状态</td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="登录"/><input type="reset" value="取消"/></td>
        </tr>
    </table>
</form>
</body>
</html>
