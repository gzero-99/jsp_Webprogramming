<%@ page contentType="text/html;charset=utf-8"%>

<%@ page import ="com.oreilly.servlet.*"%>
<%@ page import ="com.oreilly.servlet.multipart.*"%>
<%@ page import ="java.util.*" %>

<%@ page import ="dto.Product"%>
<%@ page import ="dao.ProductRepository"%>

<%
	//form 태그에서 하나씩 긁어옴 
	request.setCharacterEncoding("UTF-8");

	//파일 ch07 이미지 추가 
	String filename="";
	//String realFolder="/Users/rosa/Desktop/upload"; 
	String realFolder="//Users//rosa//Desktop//upload"; //mac 절대경로 
	String encType="utf-8";
	int maxSize= 5 * 1024 * 1024;
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	//8개의 변수 만들기.
	String productId=multi.getParameter("productId");
	String name=multi.getParameter("name");
	String unitPrice= multi.getParameter("unitPrice");
	String description=multi.getParameter("description");
	String manufacturer=multi.getParameter("manufacturer");
	String category=multi.getParameter("category");
	String unitsInStock=multi.getParameter("unitsInStock");
	String condition=multi.getParameter("condition");

	Integer price;
	
	if(unitPrice.isEmpty())
		price = 0;
	else 
		price = Integer.valueOf(unitPrice);
	
	long stock;
	
	if(unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	//파일 
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	ProductRepository dao = ProductRepository.getInstance();
	
	//상품 등록하기 
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(fileName);
	
	
	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp"); //이 페이지로 넘어가도록 
%>