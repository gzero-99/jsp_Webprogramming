<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	session.invalidate();//세션에 해당하는 내용을 전달 
	response.sendRedirect("login.jsp");
%>