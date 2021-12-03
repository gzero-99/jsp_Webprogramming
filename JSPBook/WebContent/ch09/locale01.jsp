<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="java.text.NumberFormat" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.util.*" %>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
   <h3>현재 로케일의 국가, 날짜, 통화</h3>
   <%
      Locale locale = request.getLocale();
      Date currentDate = new Date();
      DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL, locale);
      NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
   %>
   <p> 국가 : <%=locale.getDisplayCountry() %>
   <p> 날짜 : <%=dateFormat.format(currentDate) %>
   <p> 숫자 (12345.67) : <%=numberFormat.format(12345.67) %> <!-- 천단위에 콤바, 소수점 단위에 . 잘 사용됨  -->
   
   <%
   /*
  	 	국가 : 대한민국

		날짜 : 2021년 10월 29일 금요일

		숫자 (12345.67) : 12,345.67	
   */
   %>
</body>
</html>