<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	//배송 정보 처리 페이지 작성하기
	request.setCharacterEncoding("UTF-8");

	//form 에서 쿠키 getParameter로 가지고 간 데이터를 
	//쿠키 클래스 생성해서 변수에 저장해서
	Cookie cartId = new Cookie("Shipping_cartId",
		URLEncoder.encode(request.getParameter("cartId"), "utf-8"));
	Cookie name = new Cookie("Shipping_name",
		URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie shippingDate = new Cookie("Shipping_shippingDate",
		URLEncoder.encode(request.getParameter("shippingDate"), "utf-8"));
	Cookie country = new Cookie("Shipping_country",
		URLEncoder.encode(request.getParameter("country"), "utf-8"));
	Cookie zipCode = new Cookie("Shipping_zipCode",
		URLEncoder.encode(request.getParameter("zipcode"), "utf-8"));
	Cookie addressName = new Cookie("Shipping_addressName",
		URLEncoder.encode(request.getParameter("addressName"), "utf-8"));
	
	cartId.setMaxAge (24 * 60 * 60);
	name.setMaxAge (24 * 60 * 60);
	zipCode.setMaxAge (24 * 60 * 60);
	country.setMaxAge (24 * 60 * 60);
	addressName.setMaxAge (24 * 60 * 60);
	
	// 6가지 정보가 쿠키에 넣음 .
	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(country);
	response.addCookie(zipCode);
	response.addCookie(addressName);
	
	response.sendRedirect("orderConfirmation.jsp");
	
%>