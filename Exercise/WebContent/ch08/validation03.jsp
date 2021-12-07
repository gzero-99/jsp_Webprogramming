<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		var form =document.loginForm;
		var passwd = form.passwd.value;
		var regExpPwd = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
		if(!regExpPwd.test(passwd)){
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			form.passwd.select();
			return;
		}

		form.submit();
	} 


</script>
<body>
	<form name="loginForm" action="validation_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="text" name="passwd">
		<p> 비밀번호 확인 : <input type="text" name="pwdcheck">
		<p> <input type="submit" value="전송" onclick="checkLogin()"> 
	</form>
</body>
</html>
<%
	//!/^[a-zA-Z0-9]{10,15}$/.test(password)  
	///^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/  
	///^[a-zA-Z0-9]{8,}$/
%>