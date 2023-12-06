//저장소 작업 완료 
package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository{
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();

    public static ProductRepository getInstance(){
		return instance;
    }


    public ProductRepository(){
        Product original_pepero = new Product("P1242", "콩동밤돌 자카드 풀오버", 62000); // 생성자를 통해 상품 객체 생성
    	original_pepero.setDescription("콩돌이 밤돌이가 그려져있어서 언제나 입어도 좋은"); // 상품 설명
    	original_pepero.setCategory("Cloth"); // 상품 분류
        original_pepero.setManufacturer("GELATO PIQUE"); // 제조사
        original_pepero.setUnitsInStock(1000); // 재고수
        original_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	original_pepero.setFilename("P1242.jpg?v=1"); // 가져올 파일 이름
        
        Product amond_pepero = new Product("P1243", "콩돌 밤돌 쿠션 A", 44000); // 생성자를 통해 상품 객체 생성
    	amond_pepero.setDescription("잘때 귀여운 콩돌이 얼굴 보고 기절할지도 모른다!"); // 상품 설명
    	amond_pepero.setCategory("Cushion"); // 상품 분류
        amond_pepero.setManufacturer("ELATO PIQUE"); // 제조사
        amond_pepero.setUnitsInStock(700); // 재고수
        amond_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	amond_pepero.setFilename("P1243.jpg?v=1"); // 가져올 파일 이름

        Product nude_pepero = new Product("P1244", "밤돌콩돌 룸슈즈",53000); // 생성자를 통해 상품 객체 생성
    	nude_pepero.setDescription("수족냉증 여기와라! 따뜻하게 해주는"); // 상품 설명
    	nude_pepero.setCategory("Shoes"); // 상품 분류
        nude_pepero.setManufacturer("ELATO PIQUE"); // 제조사
        nude_pepero.setUnitsInStock(650); // 재고수
        nude_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	nude_pepero.setFilename("P1244.jpg?v=1"); // 가져올 파일 이름
        
        Product jeju_pepero = new Product("P1245", "너굴이 자카드 후드집업", 100000); // 생성자를 통해 상품 객체 생성
    	jeju_pepero.setDescription("추운 겨울 따듯하고 귀엽게 너굴이랑!"); // 상품 설명
    	jeju_pepero.setCategory("Cloth"); // 상품 분류
        jeju_pepero.setManufacturer("ELATO PIQU"); // 제조사
        jeju_pepero.setUnitsInStock(500); // 재고수
        jeju_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	jeju_pepero.setFilename("P1245.jpg?v=1"); // 가져올 파일 이름
        
        Product cookie_pepero = new Product("P1246", "잭슨 자카드 후드집업", 120000); // 생성자를 통해 상품 객체 생성
    	cookie_pepero.setDescription("동숲 인기주민 1티어의 귀여운 후드집업!"); // 상품 설명
    	cookie_pepero.setCategory("Cloth"); // 상품 분류
        cookie_pepero.setManufacturer("ELATO PIQU"); // 제조사
        cookie_pepero.setUnitsInStock(3000); // 재고수
        cookie_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	cookie_pepero.setFilename("P1246.jpg?v=1"); // 가져올 파일 이름
        
    	Product crunky_pepero = new Product("P1247", "쭈니 자카드 후드집업", 120000); // 생성자를 통해 상품 객체 생성
    	crunky_pepero.setDescription("1티어 주민이 또있다! 이걸 참을 수 있으십니까?"); // 상품 설명
    	crunky_pepero.setCategory("Cloth"); // 상품 분류
        crunky_pepero.setManufacturer("ELATO PIQU"); // 제조사
        crunky_pepero.setUnitsInStock(150); // 재고수
        crunky_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	crunky_pepero.setFilename("P1247.jpg?v=1"); // 가져올 파일 이름
        
        Product melon_pepero = new Product("P1248", "콩돌 밤돌 베이지색 타올", 12000); // 생성자를 통해 상품 객체 생성
    	melon_pepero.setDescription("가볍게 갖고다니기 귀엽고 실용적인!"); // 상품 설명
    	melon_pepero.setCategory("towel"); // 상품 분류
        melon_pepero.setManufacturer("ELATO PIQU"); // 제조사
        melon_pepero.setUnitsInStock(320); // 재고수
        melon_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	melon_pepero.setFilename("P1248.jpg?v=1"); // 가져올 파일 이름
        
       	Product chocolate_cookie_pepero = new Product("P1249", "초코 쿠키 빼빼로", 1600); // 생성자를 통해 상품 객체 생성
    	chocolate_cookie_pepero.setDescription("이번에는 초코와 쿠키가 만났다!"); // 상품 설명
    	chocolate_cookie_pepero.setCategory("cookieSnack"); // 상품 분류
        chocolate_cookie_pepero.setManufacturer("롯데스위트"); // 제조사
        chocolate_cookie_pepero.setUnitsInStock(170); // 재고수
        chocolate_cookie_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	chocolate_cookie_pepero.setFilename("P1249.jfif"); // 가져올 파일 이름

        Product strawberry_pepero = new Product("P1250", "콩돌 밤돌 브라운 타올", 2100); // 생성자를 통해 상품 객체 생성
    	strawberry_pepero.setDescription("가볍게 갖고다니기 귀엽고 실용적인!"); // 상품 설명
    	strawberry_pepero.setCategory("towel"); // 상품 분류
        strawberry_pepero.setManufacturer("ELATO PIQU"); // 제조사
        strawberry_pepero.setUnitsInStock(40); // 재고수
        strawberry_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	strawberry_pepero.setFilename("P1250.jpg?v=1"); // 가져올 파일 이름
        
		listOfProducts.add(original_pepero);
		listOfProducts.add(amond_pepero);
		listOfProducts.add(nude_pepero);
        listOfProducts.add(jeju_pepero);
        listOfProducts.add(cookie_pepero);
        listOfProducts.add(crunky_pepero);
        listOfProducts.add(melon_pepero);
        listOfProducts.add(chocolate_cookie_pepero);
        listOfProducts.add(strawberry_pepero);
		// listOfProducts.add(상품명);

    }    
    
    
    
    
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
    
    public void addProduct(Product product) {
		listOfProducts.add(product);
   }

}