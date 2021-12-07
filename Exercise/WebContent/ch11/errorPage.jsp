<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="isErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
         int  a = 0;
         if (a == 0) {
            throw new RuntimeException("");
         }
      %>
</body>
</html>