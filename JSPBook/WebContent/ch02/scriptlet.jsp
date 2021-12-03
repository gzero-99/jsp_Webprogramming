<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<% java.util.Date now = new java.util.Date();  %>
	<% out.println("Today : "+now); %>
</body>
</html>