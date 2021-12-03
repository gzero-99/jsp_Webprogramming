<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); //깨지지 않게 요청 
		String userid = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		if(userid.equals("관리자")&&passwd.equals("1234")){ //맞으
			response.sendRedirect("response01_sucess.jsp");
		}else{
			response.sendRedirect("response01_failed.jsp");
		}
	%>
	
</body>
</html>