<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
	Cookie[] cookies = request.getCookies();
	
	for (int i = 0 ; i < cookies.length; i++ ){
		cookies[i].setMaxAge(0); //<- 유효기간을 0으로 설정하여 쿠키를 삭제한다.
		//	쿠키 내용은 다 날렸기 때문에, 서버에서 구현한id 내용만 남게 된다.

		response.addCookie(cookies[i]);
	
	}
	response.sendRedirect("cookie02.jsp");
	
	%>
</body>
</html>