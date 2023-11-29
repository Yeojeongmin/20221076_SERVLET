<%@ page language ="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%! String greeting = "현재 페이지는 오리온 메인홈페이지 입니다.";
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
        ArrayList<Product> listOfProducts = dao.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
    %>
    <div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<div class="card bg-dark text-white">
					<img src="../image/product/<%=product.getFilename()%>" class="card-img" alt="...">
					<div class="card-img-overlay">
                    </div>
                </div>
                
                
				<h3><%=product.getPname()%></h3> <!-- 상품 이름 -->
                <p><%=product.getDescription()%></p> <!-- 상품 정보 -->
                <p><%=product.getUnitPrice()%>원</p> <!-- 상품 가격 -->
				<p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>

			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
