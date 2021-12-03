<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- page info 는 완전 주석과 같은 취급으로 페이지 소스보기를 눌러도 나타나지 않는다. 
	실행돼서웹브라우저에서도 보이지 않는다.-->
	<%@ page info="Date	클래스를 이용한 날짜 출력하기 " %>
	Today is: <%= new java.util.Date() %>
	
</body>
</html>