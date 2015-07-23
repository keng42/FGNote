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

<script type="text/javascript">
	
</script>
</head>
<body>

	<div class="left" id="left">
		<jsp:include page="nav.jsp"></jsp:include>
		<div class="list" id="list-search">
			<div class="list-nav">
				<form name="gosearch" action="search.action" method="post">
					<span class="list-title"><a onclick="sbm()">搜索</a></span> <input
						type="text" id="keyword" class="txt-search" name="keyword"
						value="<s:property value="#request['keyword']"/>" />
				</form>
				<div class="list-operate">
					<span class="count">共<s:property
							value="#request['srinfo'][0]" />条笔记</span> <select class="sort">
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
				<s:iterator value="#request['searchresult']" id="sr">
					<div class="note" onclick="viewNote(this)">
						<div class="note-top">
							<s:property value="#sr.updatetime" />
						</div>
						<div class="note-title" id="note-title">
							<s:property value="#sr.title" />
						</div>
						<div class="note-sum" id="note-sum">
							<s:property value="#sr.content" />
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
	</div>
	<jsp:include page="viewer.jsp"></jsp:include>
</body>
</html>
