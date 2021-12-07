<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Directives Tag</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<p>현재시간 : <%=java.util.Calendar.getInstance().getTime() %> </p> 
</body>
</html>
