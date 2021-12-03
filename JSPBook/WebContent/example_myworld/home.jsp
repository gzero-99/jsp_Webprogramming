<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height:100%">
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>My World</title>
</head>
<body style="height: 100%">	<!-- bgcolor='yellow' -->

	<!--  nav class ="navbar navbar-expand navbar-dark bg-dark">
		<div class = "container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./home.jsp">Home</a> 
			</div>
		</div>
	</nav-->
	
	<!-- 위에 빈칸 : 자기 사이트 입력해주면 될듯. -->
	<div class="container" style="height: 10%">
		
	</div>

	<!-- 높이 15% 남음 너비 5% 남음 -->
	<div class="row" style="height:85% ">
		<div class="ll" style="height: 100%; width: 2.5%">

		</div>
		<div class="left" style="background-color: #660099; height: 95%; width: 20%;">
			<div class="profile-image" style="text-align:center; display:flex; height:40%; width:100%;">
				<div class="container" style="margin:auto; display:inline-block">
						<img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200" src="./resources/images/MyWorldLogo.png" 
						data-holder-rendered="true" style="width: 200px; height:200px;">
				</div>
			</div>
			<div class="container" style="text-align:center; display:flex; height: 10%; width:100%">
				<div class="name" style="margin:auto; display:inline-block">
					<h5>이름 입력 칸</h5>
				</div>
			</div>
			<div class="container" style="height:40%; width:90%" >
				<div class="introduce" style="background-color :#f5f5dc;">
					저 자신을 소개합니다. intro 칸입니다. 얼마나 많이 작성되는지 확인하기위해 좀 많이 써보도록 하겠습니다. 여러가지 글꼴을 적용할 수 있을까요? 그부분은 확인해봐야겠군요. 수정할 수 있는 버튼도 넣어줘야겠어요.
				</div>
			</div>
		</div>
		
		<div class="middle" style="background-color: #f5f5dc; height: 95%; width: 60%;">
			<div class="container" style="overflow:hidden; height: 100%; width:100%">
			
			</div>
		</div>
		
		<div class="menu" style="background-color: #131933; height: 60%; width: 5%;">
			<!--  div class="container" style="height:100%; width:100%"-->
				<ul class="nav nav-tabs" role="tablist" style="padding:8px;">
					<li role="presentation" class="active"><a href="#">Home</a></li>
					<li role="presentation"><a href="#">Forum</a></li>
					<li role="presentation"><a href="#">Post</a></li>
					<li role="presentation"><a href="#">Guest</a></li>
					<li role="presentation"><a href="#">Shop</a></li>
				</ul>
			<!--  /div-->
		</div>
		
		<div class="right" style="background-color: #ece6cc; height:80%; width: 10%">
			<div class="container">
			
			</div>
		</div>
		<div class="rr" style="height:100%; width:2.5%">

		</div>
	</div>
	
	<footer class ="container">
		<p>&copy; MyWorld</p>
	</footer>
</body>
</html>

