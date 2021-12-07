<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
				//5초마다 페이지 갱신 
				response.setHeader("Refresh","1");
	
				Date day =new java.util.Date();
				String am_pm;
				int hour=day.getHours();
				int minute=day.getMinutes();
				int second=day.getSeconds();
				if(hour/12==0){
					am_pm="AM";
				}else{
					am_pm="PM";
					hour=hour-12;
				}
				String CT=hour+":"+minute + ":"+second+" "+am_pm;
				out.println("현재 시간은 "+CT+"<br>");
			
			%>
			
	<p><a href="./response_data.jsp">Google 홈페이지로 이동하기 </a>
</body>
</html>

