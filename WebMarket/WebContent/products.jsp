<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="dto.Product" %>
<%@ page import ="dao.ProductRepository"%>

<!-- <jsp:useBean id="productDAO" class ="dao.ProductRepository" scope="session"/> -->


<html>
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >

<title>상품 목록 </title>
</head>
<body>
	<%@ include file="menu.jsp" %>


	<div class ="jumbotron">
		<div class = "container">
			<h1 class = "display-3">상품목록 </h1>
		</div>
	</div>
	

	<%
		//ArrayList<Product> listOfProducts = productDAO.getAllProducts();
		ProductRepository dao=ProductRepository.getInstance();
		ArrayList<Product>  listOfProducts = dao.getAllProducts();
	%>
	
	<div class ="container">
		<div class ="row" align="center"> 
			<%
				for(int i=0;i<listOfProducts.size();i++){
					Product product = listOfProducts.get(i);
			%>
		
			<div class="col-md-4">	
				<img src="./resources/images/<%=product.getFilename()%>" style="width: 100%"/> 
				<h3><%=product.getPname() %></h3>
				<p> <%=product.getDescription() %>
				<p> <%=product.getUnitPrice() %>원 
				<p> <a href="./product.jsp?id=<%=product.getProductId() %>" 
						class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
						<!-- 쿼리 문장 만들어서 클래스를 넘김.  -->
			</div>
			<%
				}

			%>
		</div>
	</div>
	
 	<%@ include file="footer.jsp" %>
	
</body>
</html>