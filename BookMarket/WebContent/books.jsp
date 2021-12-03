<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="dto.Book" %>
<%@ page import ="dao.BookRepository" %>
<!--<jsp:useBean id="bookDAO" class ="dao.BookRepository" scope="session"/>-->


<html>
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
<title>도서 목록 </title>
</head>
<body>
	<%@ include file="menu.jsp" %>


	<div class ="jumbotron">
		<div class = "container">
			<h1 class = "display-3">도서 목록 </h1>
		</div>
	</div> 
	<%
		//ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
		BookRepository dao =BookRepository.getInstance();
		ArrayList<Book> listOfBooks=dao.getAllBooks();
	%> 
	<div class ="container">
		<div class ="row" align="left"> 
			<%
				for(int i=0;i<listOfBooks.size();i++){
					Book book = listOfBooks.get(i);
			%>
				<div class="col-md-2">				
				<img src="./resources/images/<%=book.getFilename()%>" style="width: 100%"/>
				</div>
				<div class="col-md-8">	
					<h3>[<%=book.getCategory()%>] <%=book.getName() %></h3>
									<br>
					<p> <%=book.getDescription() %></p>
									<br>
					<p> <%=book.getAuthor()%> |
						<%=book.getPublisher() %> | 
						<%=book.getUnitPrice() %>원 </p>
				</div>
				<div class ="col-md-2"> 
					<p> <a href="./book.jsp?id=<%=book.getBookId() %>" 	
						class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a> </p>	
				</div>
			<hr style="border-style:dotted">
			
			<%
				}
			%>
		</div>
	</div>
	
 	<%@ include file="footer.jsp" %>
	
</body>
</html>
