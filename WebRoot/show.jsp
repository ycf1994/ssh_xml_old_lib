<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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

<title>My JSP 'show.jsp' starting page</title>

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
	<table>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>密码</th>
			<th>操作</th>
		</tr>
		<s:iterator value="userList" status="u" var="user">
			<tr
			
			style="<s:if test="#u.odd">background-color:red</s:if>
	<s:else>background-color:blue</s:else>
	
	"
			
			
			 >
			<form action="update.action" method="post">
			<td><s:property value="#user.id"/></td>
			<input type="hidden" value="<s:property value="#user.id"/>" name="user.id">
			<td><input value="<s:property value="#user.username"/>" name="user.username"></td>
			<td><input value="<s:property value="#user.password"/>" name="user.password"></td>
			<td><input type="button" value="删除" onclick="location='del.action?user.id=<s:property value="#user.id"/>'">&nbsp&nbsp
			<input type="submit" value="更新" >&nbsp&nbsp<input type="button" value="添加" onclick="location='index.jsp'">
			</form>
			</td>
			
		</tr>
		</s:iterator>
	</table>
</body>
</html>
