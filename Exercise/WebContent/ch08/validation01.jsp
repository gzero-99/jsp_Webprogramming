<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		var form =document.loginForm;
		var id = form.id.value;
		var passwd = form.passwd.value;
		
		if(id == ""){
			alert("아이디를 입력해 주세요.");
			form.id.focus();
			return false;
		}else if(passwd == ""){
			alert("비밀번호를 입력해 주세요.");
			form.passwd.focus();
			return false;
		}
		//비밀번호에 아이디가 포함되었음 
		if(passwd.search(id) > -1){
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			form.passwd.focus();
			return false;
		}
		form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="password" name="passwd">
		<p> <input type="submit" value="전송" onclick="checkLogin()"> 
	</form>
</body>
</html>