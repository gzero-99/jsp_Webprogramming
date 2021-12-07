<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag </title>
</head>
<body>
	<jsp:useBean id="gugudan" class="ch04.com.dao.GuGuDan"></jsp:useBean>
	<h4>구구단 출력하기 </h4>
	<% 
	int sum=0;
	for(int i=1;i<10;i++){
		sum = gugudan.process(5,i);
		out.print(5+" * "+i+" = "+sum+"<br>");
	}
	%>
</body>
</html>