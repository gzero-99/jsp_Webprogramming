<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>MyWorld Guest Book</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	 <div class="container">
	    <!--  jsp:include page="main_header.jsp"/-->
 		<!--  jsp:include page="main_profile.jsp"/ -->
 		<hr>
 	</div>
 	
 	 <main role="main" class="container">
 	
	<%--@ include file="dbconn.jsp" --%>
	<div class="row flex-nowrap justify-content-between align-items-center">
		<div class="col-2 d-flex justify-content-end align-items-center">
			<a class="btn btn-sm btn-outline-secondary" href="./forum_post.jsp">사진 업로드하기</a>
			<!-- button onclick="location.href='forum_post.jsp'" style="">글 작성하기</button-->
		</div>
	</div>
		
			    <jsp:include page="guest_write.jsp"/>
			    <jsp:include page="guest_read.jsp"/>
		
	
	</main>
</body>
</html>