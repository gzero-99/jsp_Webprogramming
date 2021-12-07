<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");
	
	if(id.equals("") || pw.equals("")){
	    throw new ServletException("");
	}else{
	%>
		<p> 아이디 : <%=id %>
		<p> 비밀번호 : <%=pw %>
	<%
	}
	%>
</body>
</html>