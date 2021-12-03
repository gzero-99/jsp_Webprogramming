<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <jsp:useBean id="now" class="java.util.Date"/>
   <p> 한국 : <fmt:formatDate value="${now}" type="both" dateStyle="full"
   timeStyle="full"/>
   
   <p><fmt:timeZone value="America/New_York">
      뉴욕 : <fmt:formatDate value="${now}" type="both" dateStyle="full"
      timeStyle="full"/>
   </fmt:timeZone>
   
   <p><fmt:timeZone value="Europe/London">
      런던 : <fmt:formatDate value="${now}" type="both" dateStyle="full"
      timeStyle="full"/>
   </fmt:timeZone>
</body>
</html>
<%
/*
	한국 : 2021년 10월 29일 금요일 오후 9시 35분 39초 대한민국 표준시
	
	뉴욕 : 2021년 10월 29일 금요일 오전 8시 35분 39초 미 동부 하계 표준시

	런던 : 2021년 10월 29일 금요일 오후 1시 35분 39초 영국 하계 표준시
*/
%>