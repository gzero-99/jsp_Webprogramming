<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<h2>오류 발생</h2>
	<table border="1">
		<tr>
			<th>Error:</th>
			<td><%=exception.getClass().getName() %> : 오류 발생!!!</td>
		</tr>
		<tr>
			<th>URI:</th>
			<td>/Exercise/ch11/errorPage.jsp</td>
		</tr>
		<tr>
			<th>Status code:</th>
			<td>500</td>
		</tr>
	</table>
</body>
</html>