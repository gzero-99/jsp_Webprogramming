<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import ="com.oreilly.servlet.*"%>
<%@ page import ="com.oreilly.servlet.multipart.*"%>
<%@ page import ="java.util.*" %>
<%@ page  import="dto.Book" %>
<%@ page import ="dao.BookRepository" %>
<% 
	request.setCharacterEncoding("UTF-8");

	String filename="";
	String realFolder="//Users//rosa//Desktop//upload"; //웹 애플리케이션상의 절대 경
	String encType="utf-8";
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기 5MB 
 	
	MultipartRequest multi = new MultipartRequest(request, realFolder,
			maxSize, encType, new DefaultFileRenamePolicy());
			
	String bookId =multi.getParameter("bookId");
	String name =multi.getParameter("name");
	String unitPrice =multi.getParameter("unitPrice");
	String author =multi.getParameter("author");
	String description =multi.getParameter("description");
	String publisher =multi.getParameter("publisher");
	String category =multi.getParameter("category");
	String unitsInStock =multi.getParameter("unitsInStock");
	String totalPages =multi.getParameter("totalPages");
	String releaseDate =multi.getParameter("releaseDate");
	String condition =multi.getParameter("condition");

	Integer price;
	if(unitPrice.isEmpty())
		price=0;
	else 
		price=Integer.valueOf(unitPrice);
	
	Integer pages;
	if(totalPages.isEmpty())
		pages=0;
	else 
		pages=Integer.valueOf(totalPages);
	
	
	long stock;
	
	if(unitsInStock.isEmpty())
		stock=0;
	else
		stock=Long.valueOf(unitsInStock);
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	BookRepository dao = BookRepository.getInstance();
	
	Book newBook = new Book();
	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setUnitPrice(price);
	newBook.setPublisher(publisher);
	newBook.setTotalPages(pages);
	newBook.setDescription(description);
	newBook.setAuthor(author);
	newBook.setReleaseDate(releaseDate);
	newBook.setCategory(category);
	newBook.setUnitsInStock(stock);
	newBook.setCondition(condition);
	newBook.setFilename(fileName);
	
	dao.addBook(newBook);
	
	response.sendRedirect("books.jsp");
		
%>