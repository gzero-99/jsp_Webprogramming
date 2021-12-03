package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	public BookRepository() {
		
		Book html = new Book("D1234","html5+CSS3");
		html.setUnitPrice(15000);
		html.setAuthor("황재호");
		html.setDescription("워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으로만 읽어도 어떻게 작동하는지 쉽게 파악할 수 있는 것은 기본이고, 중간 중간 퀴즈를 추가하여 재미있게 게임하듯 복습할 수 있습니다. ");
		html.setPublisher("한빛미디어");
		html.setCategory("Hello Coding");
		html.setReleaseDate("2018/03/02");
		html.setUnitsInStock(1000);
		html.setTotalPages(288);
		html.setFilename("D1234.png");
		
		Book java = new Book("A5543","쉽게 배우는 자바 프로그래밍");
		java.setUnitPrice(27000);
		java.setAuthor("우종중");
		java.setDescription("객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게  구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구...");
		java.setPublisher("한빛아카데미");
		java.setCategory("IT모바일");
		java.setReleaseDate("2018/05/09");
		java.setUnitsInStock(999);
		java.setTotalPages(300);
		java.setFilename("A5543.png");

	
		Book spring = new Book("B9732","스프링4 입문");
		spring.setUnitPrice(27000);
		spring.setAuthor("하세가와 유이치, 오오노 와타루, 토키 코헤이(권은철, 전민수)");
		spring.setDescription("스프링은 단순히 사용 방법만 익히는 것 보다 아키텍쳐를 어떻게 이해하고 설계하는 지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니...");
		spring.setPublisher("한빛미디어");
		spring.setCategory("IT모바일");
		spring.setReleaseDate("2019/11/15");
		spring.setUnitsInStock(500);
		spring.setTotalPages(320);
		spring.setFilename("B9732.png");

		
		listOfBooks.add(html);
		listOfBooks.add(java);
		listOfBooks.add(spring);

	}
	public ArrayList<Book> getAllBooks(){
		return listOfBooks;
	}
	//id로 무얼 클릭했는지, 알 수 있는 부분 (상품별 상세정보 추가 위함) 
		public Book getBookById(String bookId) {
			Book bookById =null;
			
			for(int i=0;i<listOfBooks.size();i++) {
				Book book =listOfBooks.get(i);
				if(book !=null && book.getBookId()!=null && book.getBookId().equals(bookId)) {
					bookById=book;
					break;
				}	
			}
			return bookById;
			
		}
		
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
}
