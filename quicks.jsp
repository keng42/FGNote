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
	<s:action name="getAllQuicks"></s:action>
	<div class="left" id="left">
		<jsp:include page="nav.jsp"></jsp:include>
		<div class="list menu" id="menu-quick">
			<p class="menu-title">快捷方式列表</p>
			<!-- <div class="quick-list" onclick="noteInQuick()">quick 1</div> -->
			<s:iterator value="#request['quicks']" id="quick">
				<div class="quick-list" onclick="viewNote(this)">
					<div  style="height:2px;color:write;overflow:hidden;">
						<s:property value="#quick.updatetime" />
					</div>
					<div class="note-title" id="note-title">
						<s:property value="#quick.title" />
					</div>
					<div id="note-sum" style="height:2px;color:write;overflow:hidden;">
						<s:property value="#quick.content" />
					</div>
				</div>
			</s:iterator>
		</div>
	</div>
	<jsp:include page="viewer.jsp"></jsp:include>
</body>
</html>
