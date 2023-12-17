<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%! 
    String greeting = "동숲 공식 굿즈 사이트에 오신 것을 환영합니다!";
    String tagline = "하단 페이지: 확인";
%>

<%
    ProductRepository dao = ProductRepository.getInstance();
    ArrayList<Product> listOfProducts = dao.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%>

<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h3 class="display-4">
                <%= greeting %>
            </h3>
        </div>
    </div>

    <div class="container">
        <div class="row" align="center">
            <%
                for (int i = 0; i < listOfProducts.size(); i++) {
                    Product product = listOfProducts.get(i);
            %>
            <div class="col-md-4 product-item <%= product.getCategory().toLowerCase() %>">
                <div class="card bg-dark text-white">
                    <img src="../image/product/<%= product.getFilename() %>" class="card-img" alt="..." style="border: none;">
                    <div class="card-img-overlay">
                    </div>
                </div>

                <h3><%= product.getPname() %></h3> <!-- 상품 이름 -->
                <p><%= product.getDescription() %></p> <!-- 상품 정보 -->
                <p><%= product.getUnitPrice() %>원</p> <!-- 상품 가격 -->
                <p>
                    <a href="product_detail.jsp?id=<%= product.getProductId() %>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
                </p>
            </div>
            <%
                }
            %>
        </div>
        <hr>
    </div>
</div>

<script>
    function setCategory(category) {
        // 모든 상품 아이템 숨기기
        var products = document.getElementsByClassName("product-item");
        for (var i = 0; i < products.length; i++) {
            products[i].style.display = "none";
        }

        // 선택한 카테고리에 해당하는 상품 아이템만 표시
        var selectedCategoryProducts = document.getElementsByClassName(category.toLowerCase());
        for (var j = 0; j < selectedCategoryProducts.length; j++) {
            selectedCategoryProducts[j].style.display = "block";
        }
    }
</script>
