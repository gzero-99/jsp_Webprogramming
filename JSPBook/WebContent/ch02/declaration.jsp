<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<%-- 선언문 태그  --%>
	<%! 
		//문자형 전역변수 
		String str = "Hello, Java Server Pages"; 
		
		//문자형 변수 값을 반환하는 전역 메소드 
		public String getString(){
			return str;
		}
	%>
	<% 
		//호출하여 문자형 변수 값 출력 
		out.println(getString()); 
	%>
</body>
</html>

