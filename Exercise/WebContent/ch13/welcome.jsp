<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		//폼에서 가져오는 정보 
		String user_id = (String) session.getAttribute("userID"); 
		String user_pw = (String) session.getAttribute("userPW"); 	
		
		if(user_id == null || user_id.trim().equals("")){
			response.sendRedirect("session_out.jsp");
			return;
		}
		out.println(user_id+"님 환영합니다");
	%>
		<br>
		<a href="session_out.jsp">로그아웃</a>		
			
</body>
</html>