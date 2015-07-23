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
<meta http-equiv="description"
	content="a Note Fucking GFW | a Note Fucking GPNU">
<link rel="stylesheet" type="text/css" href="CSS/style.css">

<script type="application/javascript" src="JS/showdown.js"></script>
<script type="application/javascript" src="JS/nav.js"></script>

<s:if test="%{#session.user == null}">
	<jsp:forward page="login.jsp"></jsp:forward>
</s:if>
</head>

<body onload="navdef()">
	<s:action name="fillNotebookMap"></s:action>
	<s:action name="displayAllNotes"></s:action>
	<div class="left" id="left">
		<div class="nav">
			<div class="logo">
				<img alt="logo" src="img/logo.ico" onclick="home()">
			</div>
			<div class="nav-img">
				<a href="newNote.action"> <img alt="new" src="img/new.png">
				</a>
			</div>
			<div class="nav-img">
				<img alt="search" src="img/search.png" onclick="gosearch()">
			</div>
			<div class="nav-img quick">
				<img alt="quick" src="img/quick.png" onclick="goquick()">
			</div>
			<div class="nav-img">
				<img alt="note" src="img/note.png" onclick="choosenote()">
			</div>
			<div class="nav-img">
				<img alt="notebook" src="img/notebook.png"
					onclick="choosenotebook()">
			</div>
			<div class="nav-img">
				<img alt="label" src="img/label.png" onclick="golabel()">
			</div>
		</div>

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
						</div>
						<div class="note-title" id="note-title">
							<s:property value="#allnotes.title" />
						</div>
						<div class="note-sum" id="note-sum">
							<s:property value="#allnotes.content" />
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
		<div class="list" id="list-notebook">
			<div class="list-nav">
				<div class="list-title">笔记本: Notebook 1</div>
				<div class="list-operate">
					<span class="count">共6条笔记</span> <select class="sort">
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
				<div class="note">1</div>
				<div class="note">2</div>
				<div class="note">3</div>
				<div class="note">4</div>
				<div class="note">5</div>
				<div class="note">6</div>
			</div>
		</div>
		<div class="list" id="list-quick">
			<div class="list-nav">快捷方式</div>
			<div class="note-list">
				<div class="note">1</div>
				<div class="note">2</div>
				<div class="note">3</div>
				<div class="note">4</div>
				<div class="note">5</div>
				<div class="note">6</div>
			</div>
		</div>
		<div class="list" id="list-label">
			<!--      <div class="list-nav">标签</div>-->
			<div class="list-nav">
				<div class="list-title">标签：FuckGFW</div>
				<div class="list-operate">
					<span class="count">共6条笔记</span> <select class="sort">
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
				<div class="note">1</div>
				<div class="note">2</div>
				<div class="note">3</div>
				<div class="note">4</div>
				<div class="note">5</div>
				<div class="note">6</div>
			</div>
		</div>
		<div class="list" id="list-search">
			<div class="list-nav">
				<span class="list-title">搜索</span> <input type="text" id="keyword"
					class="txt-search">
				<div class="list-operate">
					<span class="count">共6条笔记</span> <select class="sort">
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
				<div class="note">1</div>
				<div class="note">2</div>
				<div class="note">3</div>
				<div class="note">4</div>
				<div class="note">5</div>
				<div class="note">6</div>
			</div>
		</div>

		<div class="list menu" id="menu-notebook">
			<p class="menu-title">笔记本列表</p>
			<s:iterator value="#request['notebooks']" id="notebook">
				<div class="notebook-list"
					onclick="noteInNotebook(<s:property value="#notebook.idnotebook" />)">
					<s:property value="#notebook.name" />
				</div>
			</s:iterator>
		</div>

		<div class="list menu" id="menu-label">
			<p class="menu-title">标签列表</p>
			<div class="label-list" onclick="noteInLabel()">label 1</div>
			<div class="label-list" onclick="noteInLabel()">label 2</div>
			<div class="label-list" onclick="noteInLabel()">label 3</div>
		</div>

		<div class="list menu" id="menu-quick">
			<p class="menu-title">快捷方式列表</p>
			<div class="quick-list" onclick="noteInQuick()">quick 1</div>
			<div class="quick-list" onclick="noteInQuick()">quick 2</div>
			<div class="quick-list" onclick="noteInQuick()">quick 3</div>
		</div>
	</div>
	<div class="right">
		<div class="tools">iam tools</div>
		<div class="viewer" id="view-note">
			<!-- <input type="text" class="title" value="我是標題" readonly="value">
			<br>我是正文 -->
		</div>
	</div>
</body>
</html>
