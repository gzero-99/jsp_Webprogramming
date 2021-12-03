<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<script type="text/javascript"> //자바스크립트 - 유효성 검사 
	function CheckForm(){
	 alert("아이디 : " + document.loginform.id.value + "\n"
			 + "비밀번호 : "+ document.loginform.passwd.value);
	}
</script>
<body>
	<form name="loginform">
		<p> 아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="password" name="passwd">
		<p> <input type="submit" value="전송" onclick="CheckForm()">
	</form>
</body>
</html>