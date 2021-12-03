<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String user_id = (String) session.getAttribute("userID");	//object 형 
		String user_pw = (String) session.getAttribute("userPW");	//object 형 
		
		out.println("설정된 세션의 속성 값 [1] : "+ user_id + "<br>");
		out.println("설정된 세션의 속성 값 [2] : "+ user_pw);
	%>
</body>
</html>