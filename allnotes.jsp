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

<!-- <link rel="stylesheet" type="text/css" href="CSS/style.css"> -->

</head>
<body>
	<s:action name="displayAllNotes"></s:action>
	<div class="left" id="left">
		<jsp:include page="nav.jsp"></jsp:include>
		<div class="list" id="list-note">
			<div class="list-nav">
				<div class="list-title">笔记</div>
				<div class="list-operate">
					<span class="count">共<s:property
							value="#request['allnotesCount']" />条笔记
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
				<s:iterator value="#request['allnotes']" id="allnotes">

					<div class="note" onclick="viewNote(this)">
						<div class="note-top">
							<s:property value="#allnotes.updatetime" />
							<span class="note-action">
								<a><img alt="star" src="img/star_outline.png"></a> <a><img
									alt="star" src="img/delete_white.png"></a>
							</span>
						</div>
						<div class="note-title" id="note-title">
							<s:property value="#allnotes.title" />
						</div>
						<div class="note-sum" id="note-sum">
							<s:property value="#allnotes.content" />
						</div>
						<div id="tmp-note-id" style="height:0px;width:0px;">
							<s:property value="#allnotes.idnote" />
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
	</div>
	<jsp:include page="viewer.jsp"></jsp:include>
</body>
</html>
