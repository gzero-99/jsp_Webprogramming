package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
 
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		
		Product phone = new Product("P1234","Iphone 6s",8000000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png"); //ch07 
		
		Product notebook = new Product("P1235","LG PC gram",1500000);
		notebook.setDescription("13-3inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");//ch07  

		
		Product tablet = new Product("P1236","Galaxy Tab S",900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("old");
		tablet.setFilename("P1236.png");//ch07 

		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
	}
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	//id로 무얼 클릭했는지, 알 수 있는 부분 (상품별 상세정보 추가 위함) 
	public Product getProductById(String productId) {
		Product productById =null;
		
		for(int i=0;i<listOfProducts.size();i++) {
			Product product =listOfProducts.get(i);
			if(product !=null && product.getProductId()!=null && product.getProductId().equals(productId)) {
				productById=product;
				break;
			}	
		}
		return productById;
		
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
