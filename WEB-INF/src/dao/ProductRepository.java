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
    	original_pepero.setCategory("cloth"); // 상품 분류
        original_pepero.setManufacturer("GELATO PIQUE"); // 제조사
        original_pepero.setUnitsInStock(1000); // 재고수
        original_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	original_pepero.setFilename("P1242.jpg?v=1"); // 가져올 파일 이름
        
        Product amond_pepero = new Product("P1243", "콩돌 밤돌 쿠션 A", 44000); // 생성자를 통해 상품 객체 생성
    	amond_pepero.setDescription("잘때 귀여운 콩돌이 얼굴 보고 기절할지도 모른다!"); // 상품 설명
    	amond_pepero.setCategory("doll"); // 상품 분류
        amond_pepero.setManufacturer("ELATO PIQUE"); // 제조사
        amond_pepero.setUnitsInStock(700); // 재고수
        amond_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	amond_pepero.setFilename("P1243.jpg?v=1"); // 가져올 파일 이름

        Product nude_pepero = new Product("P1244", "밤돌콩돌 룸슈즈",53000); // 생성자를 통해 상품 객체 생성
    	nude_pepero.setDescription("수족냉증 여기와라! 따뜻하게 해주는"); // 상품 설명
    	nude_pepero.setCategory("shoes"); // 상품 분류
        nude_pepero.setManufacturer("ELATO PIQUE"); // 제조사
        nude_pepero.setUnitsInStock(650); // 재고수
        nude_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	nude_pepero.setFilename("P1244.jpg?v=1"); // 가져올 파일 이름
        
        Product jeju_pepero = new Product("P1245", "너굴이 자카드 후드집업", 100000); // 생성자를 통해 상품 객체 생성
    	jeju_pepero.setDescription("추운 겨울 따듯하고 귀엽게 너굴이랑!"); // 상품 설명
    	jeju_pepero.setCategory("cloth"); // 상품 분류
        jeju_pepero.setManufacturer("ELATO PIQU"); // 제조사
        jeju_pepero.setUnitsInStock(500); // 재고수
        jeju_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	jeju_pepero.setFilename("P1245.jpg?v=1"); // 가져올 파일 이름
        
        Product cookie_pepero = new Product("P1246", "잭슨 자카드 후드집업", 120000); // 생성자를 통해 상품 객체 생성
    	cookie_pepero.setDescription("동숲 인기주민 1티어의 귀여운 후드집업!"); // 상품 설명
    	cookie_pepero.setCategory("cloth"); // 상품 분류
        cookie_pepero.setManufacturer("ELATO PIQU"); // 제조사
        cookie_pepero.setUnitsInStock(3000); // 재고수
        cookie_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	cookie_pepero.setFilename("P1246.jpg?v=1"); // 가져올 파일 이름
        
    	Product crunky_pepero = new Product("P1247", "쭈니 자카드 후드집업", 120000); // 생성자를 통해 상품 객체 생성
    	crunky_pepero.setDescription("1티어 주민이 또있다! 이걸 참을 수 있으십니까?"); // 상품 설명
    	crunky_pepero.setCategory("cloth"); // 상품 분류
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
        
       	Product chocolate_cookie_pepero = new Product("P1251", "동숲 숄더 파우치", 36000); // 생성자를 통해 상품 객체 생성
    	chocolate_cookie_pepero.setDescription("닌텐도 전용 가방이 동술과 콜라보를 진행했다!"); // 상품 설명
    	chocolate_cookie_pepero.setCategory("bag"); // 상품 분류
        chocolate_cookie_pepero.setManufacturer("롯데스위트"); // 제조사
        chocolate_cookie_pepero.setUnitsInStock(170); // 재고수
        chocolate_cookie_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	chocolate_cookie_pepero.setFilename("P1251.jpg?v=1"); // 가져올 파일 이름

        Product strawberry_pepero = new Product("P1250", "콩돌 밤돌 브라운 타올", 2100); // 생성자를 통해 상품 객체 생성
    	strawberry_pepero.setDescription("가볍게 갖고다니기 귀엽고 실용적인!"); // 상품 설명
    	strawberry_pepero.setCategory("towel"); // 상품 분류
        strawberry_pepero.setManufacturer("ELATO PIQU"); // 제조사
        strawberry_pepero.setUnitsInStock(40); // 재고수
        strawberry_pepero.setCondition("New"); // 신상품, 중고품, 재생품
    	strawberry_pepero.setFilename("P1250.jpg?v=1"); // 가져올 파일 이름
        
        Product tote_bag = new Product("P1252", "동숲 토트백", 42000); // 생성자를 통해 상품 객체 생성
    	tote_bag.setDescription("평상시에도 사용이 가능한 대형 사이즈의 토트백 (A4 수납가능)"); // 상품 설명
    	tote_bag.setCategory("bag"); // 상품 분류
        tote_bag.setManufacturer("Nintendo"); // 제조사
        tote_bag.setUnitsInStock(620); // 재고수
        tote_bag.setCondition("New"); // 신상품, 중고품, 재생품
    	tote_bag.setFilename("P1252.jpg?v=1"); // 가져올 파일 이름     
        
        Product recive_bag = new Product("P1253", "동숲 통째로 수납 가방", 58000); // 생성자를 통해 상품 객체 생성
    	recive_bag.setDescription("본체와 독을 포함하나 주변기기를 통째로 수납 가능한 가방"); // 상품 설명
    	recive_bag.setCategory("bag"); // 상품 분류
        recive_bag.setManufacturer("Nintendo"); // 제조사
        recive_bag.setUnitsInStock(580); // 재고수
        recive_bag.setCondition("New"); // 신상품, 중고품, 재생품
    	recive_bag.setFilename("P1253.jpg?v=1"); // 가져올 파일 이름
        
        Product hand_bag = new Product("P1254", "동숲 핸드 파우치", 23000); // 생성자를 통해 상품 객체 생성
    	hand_bag.setDescription("본체와 함께 작은 물품을 함께 수납할 수 있는 파우치"); // 상품 설명
    	hand_bag.setCategory("bag"); // 상품 분류
        hand_bag.setManufacturer("Nintendo"); // 제조사
        hand_bag.setUnitsInStock(1080); // 재고수
        hand_bag.setCondition("New"); // 신상품, 중고품, 재생품
    	hand_bag.setFilename("P1254.jpg?v=1"); // 가져올 파일 이름
        
        Product JJuni_doll = new Product("P1255", "동숲 쭈니 대형 쿠션 인형", 16000); // 생성자를 통해 상품 객체 생성
    	JJuni_doll.setDescription("인형&키링 43cm /다람쥐 동숲 모동숲 캐릭터 애착 큰 굿즈"); // 상품 설명
    	JJuni_doll.setCategory("doll"); // 상품 분류
        JJuni_doll.setManufacturer("Nintendo"); // 제조사
        JJuni_doll.setUnitsInStock(500); // 재고수
        JJuni_doll.setCondition("New"); // 신상품, 중고품, 재생품
    	JJuni_doll.setFilename("P1255.jpg?v=1"); // 가져올 파일 이름
        
        Product Yeoul_doll = new Product("P1256", "동숲 여울 일본 정품 A 인형", 23000); // 생성자를 통해 상품 객체 생성
    	Yeoul_doll.setDescription("동뭏의 숲 안내방송 여울 굿즈"); // 상품 설명
    	Yeoul_doll.setCategory("doll"); // 상품 분류
        Yeoul_doll.setManufacturer("Nintendo"); // 제조사
        Yeoul_doll.setUnitsInStock(500); // 재고수
        Yeoul_doll.setCondition("New"); // 신상품, 중고품, 재생품
    	Yeoul_doll.setFilename("P1256.jpg?v=1"); // 가져올 파일 이름
        
        Product Guiomi_doll = new Product("P1257", "동숲 귀오미 일본 정품 B 인형", 23000); // 생성자를 통해 상품 객체 생성
    	Guiomi_doll.setDescription("동뭏의 숲 1티어 주민 귀오미 굿즈"); // 상품 설명
    	Guiomi_doll.setCategory("doll"); // 상품 분류
        Guiomi_doll.setManufacturer("Nintendo"); // 제조사
        Guiomi_doll.setUnitsInStock(500); // 재고수
        Guiomi_doll.setCondition("New"); // 신상품, 중고품, 재생품
    	Guiomi_doll.setFilename("P1257.jpg?v=1"); // 가져올 파일 이름
        
      
		listOfProducts.add(original_pepero);
		listOfProducts.add(amond_pepero);
		listOfProducts.add(nude_pepero);
        listOfProducts.add(jeju_pepero);
        listOfProducts.add(cookie_pepero);
        listOfProducts.add(crunky_pepero);
        listOfProducts.add(melon_pepero);
        listOfProducts.add(chocolate_cookie_pepero);
        listOfProducts.add(strawberry_pepero);
        listOfProducts.add(tote_bag);
        listOfProducts.add(recive_bag);
        listOfProducts.add(hand_bag);
        listOfProducts.add(JJuni_doll);
        listOfProducts.add(Yeoul_doll);
        listOfProducts.add(Guiomi_doll);
        
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