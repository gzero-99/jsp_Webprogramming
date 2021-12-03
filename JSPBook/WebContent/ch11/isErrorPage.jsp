<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage= "isErrorPage_error.jsp" %>
<html>
<head>
<title>Exception</title>
</head>
<body>
	name 파라미터 : <%= request.getParameter("name").toUpperCase() %> <!-- name존재 하지 않아 오류 발생! -->
</body>
</html>