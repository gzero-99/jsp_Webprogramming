<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
	session.invalidate();
	
	response.sendRedirect("session.jsp");
	%>
</body>
</html>