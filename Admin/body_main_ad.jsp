<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %> <!-- 추가된 부분 -->
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>


    <%! String greeting = "놀러와요 동물의 숲";
      String tagline = "아기자기한 친구들과 같이 플레이해보시겠어요?";%>
<div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
  <%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>


	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                    <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>

	<h3><%=product.getPname()%></h3> <!닌텐도 스위치>
	<p><%=product.getDescription()%> <!닌텐도 스위치 라이트>
	<p><%=product.getUnitPrice()%>원 <!OLED>
     <a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
               
	</div>
        </div></div>
	<%
		} // 반복문 끝
	%>
        </div>
		<hr>

<div class ="card bg-dark text-white">
    <img src="image/sale.png" class="card-image" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">
            할인 이벤트
        </h5>
        <p class="card-text">
            Nintendo
        </p>
    </div>
</div>
<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">닌텐도 동물의숲 에디션</a>
    <a href="#" class="list-group-item list-group-item-action">닌텐도 스위치</a>
    <a href="#" class="list-group-item list-group-item-action">닌텐도 스위치 라이트</a>
</div>