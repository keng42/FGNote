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

<title>My JSP 'viewer.jsp' starting page</title>

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
	<s:action name="displayNotebooks"></s:action>
	<div class="right">
		<div class="tools">
			<div class="book-lab">
				<%-- <s:select cssClass="folder" list="notebookMap" name="notebookId"></s:select> --%>
				<input id="tempnbid" type="text" name="note.notebook.idnotebook"
					style="display:none;" /> <select class="folder" id="notebooks"
					onchange="changenotebook()">
					<s:iterator value="#request['notebooks']" id="notebook">
						<option value="<s:property value="#notebook.idnotebook" />"><s:property
								value="#notebook.name" /></option>
					</s:iterator>
				</select> <input type="text" class="edit-label" placeholder="新建标签"
					name="note.labelid" />
				<div class="viewer-info" id="divtoeditnote">
					<!-- <a href="editnote.action?noteid=1" class="finish0">编辑</a> -->
				</div>
			</div>



		</div>
		<div class="viewer" id="view-note">
			<input type="text" class="title" value="我是標題" readonly="value">
			<br>我是正文
		</div>
	</div>
</body>
</html>
