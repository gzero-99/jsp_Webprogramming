<%@ page contentType="text/html; charset=utf-8" %>

<%@ page isELIgnored="true" %> 
<!-- true 안하면 "request 내장 객체 " 출력함! -->
<!-- true 해주면, text 처럼 &{} 부분이 그냥 출력 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("Requestattribute","request 내장 객체");
	%>
	
	&{requestScope.RequestAttribute}
</body>
</html>