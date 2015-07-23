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

<title>FGNote</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="application/javascript" src="JS/showdown.js"></script>
<script type="application/javascript" src="JS/nav.js"></script>
<link rel="stylesheet" type="text/css" href="CSS/style.css">
<s:if test="%{#session.user == null}">
	<jsp:forward page="login.jsp"></jsp:forward>
</s:if>
</head>
<body>
	<div class="nav">
		<div class="logo">
			<img alt="logo" src="img/logo.ico" onclick="home()">
		</div>
		<div class="nav-img">
			<a href="editer.jsp"><img alt="new" src="img/new.png"> </a>
		</div>
		<div class="nav-img">
			<a href="search.jsp"><img alt="search" src="img/search.png"></a>
		</div>
		<div class="nav-img quick">
			<a href="quicks.jsp"><img alt="quick" src="img/quick.png"></a>
		</div>
		<div class="nav-img">
			<a href="allnotes.jsp"><img alt="note" src="img/note.png"></a>
		</div>
		<div class="nav-img">
			<a href="books.jsp"><img alt="notebook" src="img/notebook.png"></a>
		</div>
		<div class="nav-img">
			<a href="labels.jsp"><img alt="label" src="img/label.png"></a>
		</div>
	</div>
</body>
</html>
