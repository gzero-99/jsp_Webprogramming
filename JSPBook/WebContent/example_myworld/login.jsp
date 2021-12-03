<%@ page contentType="text/html; charset=UTF-8"%>
<!--  삭제해도 되는 페이지 !! 사용안함 !  -->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Login</title>
</head>
<body>
	<!-- jsp:include page="menu.jsp"/-->
	<div class = "jumbotron"  style="background-color:#a1d7ff;">
		<div class="container">
			<h1 class="display-3">Welcome back to MyWorld</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-5 col-md-offset-5">
			<h3 class="form-signin-heading">Sign in to your own world</h3>
			<%
				String error = request.getParameter("error");
				if(error!=null){
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요. ");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="j_security_check" method="post">	
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User ID</label>
					<input type="text" class="form-control" placeholder="ID" name='j_username' required autofocus>
 				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label>
					<input type="password" class="form-control" placeholder="Password" name='j_password' required>
 				</div> 
 				<button style="background-color:purple; border-color:purple; color:white; border-radius: 12px;" class="btn btn-lg" type="submit">Login</button>			
			</form>		
		</div>
	</div>
</body>
</html>