<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>

<%
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	
	session.invalidate();	//장바구니 전부 다 삭제하기 .
	
	response.sendRedirect("cart.jsp");
	

%>