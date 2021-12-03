<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); //깨지지 않게 요청 
		String userid = request.getParameter("id");
		String password = request.getParameter("passwd");
	%>
	<p> 아이디 : <%out.println(userid); %>
	<p> 비밀번호 : <%out.println(password); %>
	
	<p> 아이디 : <%=userid %>
	
</body>
</html>