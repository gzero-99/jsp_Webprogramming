<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 css 적용하기 위함. -->
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<!--  머리글 모듈화   -->
	<%@ include file="menu.jsp" %>

	<%-- 선언문 태그 :전역변수  --%>
	<%! String name = "도서 웹 쇼핑몰 ";%>
	
	<!-- 점보트론 이용해서 표현식 부분 변경 -->
	<%-- 표현문 태그  --%>
	<div class ="jumbotron">
		<div class = "container"> <!--  위쪽 container 사용  -->
			<h1 class = "display-3"><%= name %></h1>
		</div>
	</div>
	
	<!--  /main -->

	<!-- 바닥글 모듈화  -->
	<%@ include file="footer.jsp" %>
	
</body>
</html>

