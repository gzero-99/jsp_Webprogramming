<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin") && user_pw.equals("admin1234")){
			Cookie cookie_id = new Cookie("userID", user_id);	//쿠키 클래스, 객체 생성
			Cookie cookie_pw = new Cookie("userPW", user_pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			
			response.sendRedirect("welcome.jsp");
			
		}else{
			out.println("쿠키 생성이 실패했습니다 ");
		}
	%>
</body>
</html>