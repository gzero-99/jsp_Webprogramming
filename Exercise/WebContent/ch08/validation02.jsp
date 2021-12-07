<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		//var regExpThree =  /(\w)\1\1\1/; //동일 문자 3번이상 안됨
		
		var form = document.loginForm;
		 
		var id = form.id.value;
		var passwd = form.passwd.value;
		var pwdck = form.pwdcheck.value;
		
		if(/(\w)\1\1\1/.test(passwd)){
			alert("동일한 영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
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