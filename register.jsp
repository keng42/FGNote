<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>FGNote - 创建账户</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description"
	content="a Note Fucking GFW | a Note Fucking GPNU">

<link rel="stylesheet" type="text/css" href="CSS/style.css">

</head>

<body>
	<div>
		<form action="register.action" method="post" name="register">
			<div class="login-main">
				<div class="login-top">
					<img alt="logo" src="img/logo.ico" class="login-logo">
					<p>创建账号</p>
				</div>
				<div class="login-box">
					<s:if test="%{#session.checkemail != null}">
					该邮箱已注册
					</s:if>
					<p>邮箱</p>
					<input type="text" id="TxtName" class="input" name="user.email" />
					<p>密码</p>
					<input type="password" id="PWD" class="input" name="user.password" />
					<input type="submit" value="创建账户" id="BtnLogin" class="btn-login">
					<br /> <br /> <a href="login.jsp">已有账户?</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
