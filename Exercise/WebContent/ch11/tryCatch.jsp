<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
	try{
		int a=10;
		int c =a/0;
		
	}catch(Exception e){
	%>
		<p> 오류 발생 : <%= e.getLocalizedMessage() %>
	<%
	}
	%>
</form>
</body>
</html>