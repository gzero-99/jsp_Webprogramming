<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String name=request.getParameter("name");
	String address=request.getParameter("address");
	String email =request.getParameter("email");
	%>
	<p> 이름 : <%=name%>
	<p> 주소 : <%=address %>
	<p> 이메일 : <%=email %>
</body>
</html>