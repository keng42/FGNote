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
	<div class="left" id="left">
		<jsp:include page="nav.jsp"></jsp:include>
		<div class="list" id="list-notebook">
			<div class="list-nav">
				<div class="list-title">
					笔记本:
					<s:property value="#request['notebookinfo'][1]" />
				</div>
				<div class="list-operate">
					<span class="count">共<s:property
							value="#request['notebookinfo'][2]" />条笔记
					</span> <select class="sort">
						<option value="1">更新日期(最早优先)</option>
						<option value="1">更新日期(最新优先)</option>
						<option value="1">创建日期(最早优先)</option>
						<option value="1">创建日期(最新优先)</option>
						<option value="1">标题(升序)</option>
						<option value="1">标题(降序)</option>
					</select>
				</div>
			</div>
			<div class="note-list">
				<s:iterator value="#request['notesofbook']" id="notesofbook">
					<div class="note" onclick="viewNote(this)">
						<div class="note-top">
							<s:property value="#notesofbook.updatetime" />
						</div>
						<div class="note-title" id="note-title">
							<s:property value="#notesofbook.title" />
						</div>
						<div class="note-sum" id="note-sum">
							<s:property value="#notesofbook.content" />
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
	</div>
	<jsp:include page="viewer.jsp"></jsp:include>
</body>
</html>
