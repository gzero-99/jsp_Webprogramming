<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		//폼에서 가져오는 정보 
		String user_id = request.getParameter("id"); 	
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin") && user_pw.equals("1234")){
			session.setAttribute("userID",user_id); // admin을 	userID에 setup
			session.setAttribute("userPW",user_pw); // 1234를 	userPW에 setup
			out.println("세션 설정이 성공했습니다<br>");
			out.println(user_id+"님 환영합니다");
		}else{
			out.println("세션 설정이 실패했습니다");

		}
	%>
</body>
</html>