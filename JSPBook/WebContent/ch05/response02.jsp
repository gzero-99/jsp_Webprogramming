<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Calendar" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<p>이 페이지는 3초마다 새로고침 됩니다.
	<%
		response.setIntHeader("Refresh",3);
	%>
	<p> <%=(new java.util.Date()) %>
	
	<%
		Calendar cal  =  Calendar.getInstance();
		int hour = cal.get(Calendar.HOUR);
		int min = cal.get(Calendar.MINUTE);
		int sec = cal.get(Calendar.SECOND);

		//response.setHeader("Refresh",1);
	%>
	<!--  3초에 한 번씩 시간이 바뀜을 확인 가능함!  -->
</body>
</html>