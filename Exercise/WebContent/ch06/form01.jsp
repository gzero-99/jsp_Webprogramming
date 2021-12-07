<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<form action="form01_process.jsp" name="member" method="post">
		<p> 이름 : <input type="text" name="name">
		<p> 주소 : <input type="text" name="address">
		<p> 이메일 : <input type="text" name="email" >
		<p> <input type="submit" value="전송">
	</form> 
</body>
</html>