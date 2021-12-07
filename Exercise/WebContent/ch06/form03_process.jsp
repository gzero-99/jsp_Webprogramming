<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<h3> 선택한 과일 </h3>
	<br>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String[] fruit=request.getParameterValues("fruit");
	%>
	<p>  
		<%
		if (fruit!=null){
			 for(int i=0; i<fruit.length ;i++){
				 out.println(" "+fruit[i]);
			 }
		}
		%>
</body>
</html>