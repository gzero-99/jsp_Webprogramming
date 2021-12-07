<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<!-- 짝수 출력  -->
	<c:forEach var="k" begin="0" end="10" step="2">
		<c:out value="${k}"/>
	</c:forEach>
</body>
</html>
