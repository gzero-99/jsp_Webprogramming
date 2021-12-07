<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*, java.io.*, java.lang.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8"); //깨지지 마라 
	
		Enumeration paramNames=request.getParameterNames();
		StringBuffer str=new StringBuffer("");
		
		while (paramNames.hasMoreElements()){
			String name = (String) paramNames.nextElement();
			String paramValue= request.getParameter(name);
			str.append(name+" : "+paramValue +"<br>");			
		}
		out.println(str);
	%>
</body>
</html>
