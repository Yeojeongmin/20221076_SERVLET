<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%! String greeting = "현재 페이지는 롯데 메인홈페이지 입니다.";
	String tagline = "하단 페이지 : 확인";%>

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
		ArrayList<Product> listOfProducts = dao.getAllProducts();// 리스트 상품의 전체 정보를 얻어온다.
	%>
    </div>

    <div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) { // 반복문 시작 : 리스트 저장된 상품 크기만큼 반복
					Product product = listOfProducts.get(i); // 상품 정보 얻기
			%>
			<div class="col-md-4">
				<div class="card bg-dark text-white">
					<!-- <img src="../image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="..."> -->
                    <img src="../image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                    
					<div class="card-img-overlay">
                    <h5 class="card-title">빼빼로 사진 이미지 샘플</h5>
                    <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
                
				<h3><%=product.getPname()%></h3> <!-- 상품 이름 -->
                <p><%=product.getDescription()%></p> <!-- 상품 정보 -->
                <p><%=product.getUnitPrice()%>원</p> <!-- 상품 가격 -->
                <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>

			</div>
			<%
				} // 반복문 끝
			%>
		</div>
		<hr>
	</div>
