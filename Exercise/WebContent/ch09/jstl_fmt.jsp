<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="ch09.com.bundle.myBundle">
	
	<a href="?language=ko"> Korean </a>|<a href="?language=en"> English </a>	
	<p> <fmt:message key="id"/> : <input type="text" name="id"></p>
	<p> <fmt:message key="password"/> : <input type="text" name="passwd"> </p>
	<p> <input type ="button" value ="<fmt:message key="button"/>"> </p>
	
	</fmt:bundle>
	
</body>
</html>