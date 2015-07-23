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

<title>FGNote - 登陆</title>
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
		<s:if test="%{#session.user != null}">
			<jsp:forward page="login_success.jsp"></jsp:forward>
		</s:if>
		<form action="login.action" method="post" name="login">
			<div class="login-main">
				<div class="login-top">

					<img alt="logo" src="img/logo.ico" class="login-logo">

					<p>登陆</p>
				</div>
				<div class="login-box">
					<s:if test="%{#session.validateuser != null}">
				邮箱或密码错误
				</s:if>
					<p>电子邮箱</p>
					<input type="text" id="TxtName" class="input" name="user.email" />
					<p>密码</p>
					<input type="password" id="PWD" class="input" name="user.password" />
					<br> <input type="checkbox" class="auto-login">一周内记住我
					<br> <input type="submit" value="登陆" id="BtnLogin"
						class="btn-login"> <br /> <br /> <a href="findpwd.jsp">忘记密码?</a>
					<br /> <a href="register.jsp">没有账号?</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
