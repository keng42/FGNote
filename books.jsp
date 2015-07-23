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

<link rel="stylesheet" type="text/css" href="CSS/style.css">


</head>
<body>
	<s:action name="fillNotebookMap"></s:action>
	<div class="left" id="left">
		<jsp:include page="nav.jsp"></jsp:include>
		<div class="list menu" id="menu-notebook">
			<p class="menu-title">笔记本列表</p>
			<s:iterator value="#request['notebooks']" id="notebook">
				<div class="notebook-list"
					onclick="window.location='getNotesOfNotebook.action?notebookid=<s:property value="#notebook.idnotebook" />';">
					<s:property value="#notebook.name" />
				</div>
			</s:iterator>
		</div>
	</div>

</body>
</html>
