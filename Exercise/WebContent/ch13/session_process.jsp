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
		
		if(user_id.equals("admin") && user_pw.equals("admin1234")){
			session.setAttribute("userID",user_id); // admin을 	userID에 setup
			session.setAttribute("userPW",user_pw); // admin1234를 	userPW에 setup
			
			response.sendRedirect("welcome.jsp");

		}else{
			out.println("세션 연결에 실패하였습니다.");
		}
	%>
</body>
</html>