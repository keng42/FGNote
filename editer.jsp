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

<title>FGNote - 新建笔记</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="CSS/style.css">
<script type="application/javascript" src="JS/nav.js"></script>
<script type="application/javascript" src="JS/showdown.js"></script>
</head>

<body>
	<s:if test="%{#session.user == null}">
		<jsp:forward page="login.jsp"></jsp:forward>
	</s:if>
	<s:action name="displayNotebooks"></s:action>
	<form name="sb" action="createNote.action" method="post"
		name="createNote">
		<div class="editer-main">
			<div class="editer-tools">
				<div class="book-lab">
					<input id="tempnbid" type="text" name="note.notebook.idnotebook"
						style="display:none;" /> <select class="folder" id="notebooks"
						onchange="selectnotebook()">
						<s:iterator value="#request['notebooks']" id="notebook">
							<option value="<s:property value="#notebook.idnotebook" />"><s:property
									value="#notebook.name" /></option>
						</s:iterator>
					</select> <input type="text" class="edit-label" placeholder="新建标签"
						name="note.labelid" />
				</div>
				<div class="div-title">
					<input type="text" class="edit-title" placeholder="标题"
						name="note.title" />
				</div>
				<div class="editer-info">
					<a href="javascript:document.sb.submit()" class="finish">完成</a>
				</div>
			</div>
			<div class="editer">
				<div class="md">
					<textarea id="txt" onkeyup="corvertRealTime()"
						placeholder="从这里开始..." name="note.content"><></textarea>
				</div>
				<div class="html" id="html"></div>
				<input type="checkbox" id="autoscroll" onchange="autoscroll(this)" />自动滚动
			</div>
		</div>
	</form>
</body>
</html>
