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
        Product original_pepero = new Product("P1242", "오리지널 빼빼로", 1000); // 생성자를 통해 상품 객체 생성
    	original_pepero.setDescription("기본 빼빼로 시그니처"); // 상품 설명
    	original_pepero.setCategory("originalSnack"); // 상품 분류
        original_pepero.setManufacturer("롯데스위트"); // 제조사
        original_pepero.setUnitsInStock(1000); // 재고수
        original_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	original_pepero.setFilename("P1242.jpg"); // 가져올 파일 이름
        
        Product amond_pepero = new Product("P1243", "아몬드 빼빼로", 1300); // 생성자를 통해 상품 객체 생성
    	amond_pepero.setDescription("국민 간식 아몬드가 콕콕 박힌"); // 상품 설명
    	amond_pepero.setCategory("originalSnack"); // 상품 분류
        amond_pepero.setManufacturer("롯데스위트"); // 제조사
        amond_pepero.setUnitsInStock(700); // 재고수
        amond_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	amond_pepero.setFilename("P1243.jpg"); // 가져올 파일 이름

        Product nude_pepero = new Product("P1244", "누드 빼빼로", 1200); // 생성자를 통해 상품 객체 생성
    	nude_pepero.setDescription("안에 부드러운 초코가 들어간~"); // 상품 설명
    	nude_pepero.setCategory("originalSnack"); // 상품 분류
        nude_pepero.setManufacturer("롯데스위트"); // 제조사
        nude_pepero.setUnitsInStock(650); // 재고수
        nude_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	nude_pepero.setFilename("P1244.jpg"); // 가져올 파일 이름
        
        Product jeju_pepero = new Product("P1245", "제주 감귤 빼빼로", 1700); // 생성자를 통해 상품 객체 생성
    	jeju_pepero.setDescription("제주의 향을 듬뿍 담은!"); // 상품 설명
    	jeju_pepero.setCategory("frultSnack"); // 상품 분류
        jeju_pepero.setManufacturer("롯데스위트"); // 제조사
        jeju_pepero.setUnitsInStock(500); // 재고수
        jeju_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	jeju_pepero.setFilename("P1245.jpg"); // 가져올 파일 이름
        
        Product cookie_pepero = new Product("P1246", "쿠키 앤 크림 빼빼로", 1600); // 생성자를 통해 상품 객체 생성
    	cookie_pepero.setDescription("쿠키가 크림에 퐁당!"); // 상품 설명
    	cookie_pepero.setCategory("cookieSnack"); // 상품 분류
        cookie_pepero.setManufacturer("롯데스위트"); // 제조사
        cookie_pepero.setUnitsInStock(3000); // 재고수
        cookie_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	cookie_pepero.setFilename("P1246.jpg"); // 가져올 파일 이름
        
    	Product crunky_pepero = new Product("P1247", "크런키 빼빼로", 1400); // 생성자를 통해 상품 객체 생성
    	crunky_pepero.setDescription("크런키와 빼빼로의 운명적 만남"); // 상품 설명
    	crunky_pepero.setCategory("collaborationSnack"); // 상품 분류
        crunky_pepero.setManufacturer("롯데스위트"); // 제조사
        crunky_pepero.setUnitsInStock(150); // 재고수
        crunky_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	crunky_pepero.setFilename("P1247.jpg"); // 가져올 파일 이름
        
        Product melon_pepero = new Product("P1248", "메론 빼빼로", 1900); // 생성자를 통해 상품 객체 생성
    	melon_pepero.setDescription("국민 음악앱 melon과 협업한 작품"); // 상품 설명
    	melon_pepero.setCategory("frultSnack"); // 상품 분류
        melon_pepero.setManufacturer("롯데스위트"); // 제조사
        melon_pepero.setUnitsInStock(320); // 재고수
        melon_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	melon_pepero.setFilename("P1248.jpg"); // 가져올 파일 이름
        
       	Product chocolate_cookie_pepero = new Product("P1249", "초코 쿠키 빼빼로", 1600); // 생성자를 통해 상품 객체 생성
    	chocolate_cookie_pepero.setDescription("이번에는 초코와 쿠키가 만났다!"); // 상품 설명
    	chocolate_cookie_pepero.setCategory("cookieSnack"); // 상품 분류
        chocolate_cookie_pepero.setManufacturer("롯데스위트"); // 제조사
        chocolate_cookie_pepero.setUnitsInStock(170); // 재고수
        chocolate_cookie_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	chocolate_cookie_pepero.setFilename("P1249.jfif"); // 가져올 파일 이름

        Product strawberry_pepero = new Product("P1250", "딸기 빼빼로", 2100); // 생성자를 통해 상품 객체 생성
    	strawberry_pepero.setDescription("상큼한 딸기와의 만남"); // 상품 설명
    	strawberry_pepero.setCategory("frultSnack"); // 상품 분류
        strawberry_pepero.setManufacturer("롯데스위트"); // 제조사
        strawberry_pepero.setUnitsInStock(40); // 재고수
        strawberry_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	strawberry_pepero.setFilename("P1250.jpg"); // 가져올 파일 이름
        
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