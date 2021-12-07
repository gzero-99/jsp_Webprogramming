<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Locale" %>
<%
	Locale locale = request.getLocale();
	String language = locale.getLanguage();
	String country = locale.getCountry();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
	<h3> 현재 로케일 </h3>
	<%
		out.println("언어 :  "+language+"<br/>");
		out.println("국가 :  "+country+"<br/>");

	%>
</body>
</html>