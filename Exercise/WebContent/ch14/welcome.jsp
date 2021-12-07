<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] userId = request.getCookies();
		if (userId[0] == null) {
			response.sendRedirect("cookie_out.jsp");
			return;
		}
	%>
	
	<h3><%=userId[0].getValue() %>님 반갑습니다.</h3>
	<a href="cookie_out.jsp">로그아웃</a>
</body>
</html>