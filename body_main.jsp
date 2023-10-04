<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />


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
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 	
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
			<h3>
				<%=tagline%>
			</h3>
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