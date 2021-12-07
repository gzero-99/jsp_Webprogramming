<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); //깨지지 않게 요청 
		String userid = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
	%>
		<p> 전송된 요청 파라미터 : <%=request.getQueryString() %>

</body>
</html>