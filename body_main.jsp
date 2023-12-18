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
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script src="../profile/profile.jsp"></script>
    <!-- 추가적인 스타일이 필요한 경우 여기에 추가하세요 -->
    <style>
        .favorite-button {
            background-color: transparent;
            border: none;
            cursor: pointer;
        }

        .favorite-icon {
            font-size: 2rem;
        }

        .favorite-icon-gray {
            color: #808080; /* 회색 별 아이콘 색상 */
        }

        .favorite-icon-yellow {
            color: #FFD700; /* 노란색 별 아이콘 색상 */
        }
    </style>
</head>
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
                    String localStorageKey = "favorite_" + i;
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
                    <button class="btn btn-warning favorite-button" data-index="<%= i %>"
                            onclick="toggleFavorite(this, '<%= product.getPname() %>', '<%= product.getDescription() %>', '<%= product.getUnitPrice() %>', '<%= product.getFilename() %>')">
                        <i class="fas fa-star favorite-icon favorite-icon-gray"></i>
                    </button>
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

    function toggleFavorite(button, pname, description, unitPrice, filename) {
        const icon = button.querySelector('.favorite-icon');
        const index = button.getAttribute('data-index');
        const localStorageKey = "favorite_" + index;

        if (icon.classList.contains('favorite-icon-gray')) {
            icon.classList.remove('favorite-icon-gray');
            icon.classList.add('favorite-icon-yellow');
            localStorage.setItem(localStorageKey, 'true');
        } else {
            icon.classList.remove('favorite-icon-yellow');
            icon.classList.add('favorite-icon-gray');
            localStorage.setItem(localStorageKey, 'false');
        }

        // 프로필 페이지에 즐겨찾기 상태 업데이트
        updateProfileFavorites(index, icon.classList.contains('favorite-icon-yellow'), pname, description, unitPrice, filename);
    }

    function updateProfileFavorites(index, isFavorite, pname, description, unitPrice, filename) {
        const iframe = document.getElementById('profileFrame');
        if (iframe) {
            iframe.contentWindow.postMessage({ index, isFavorite, pname, description, unitPrice, filename }, 'http://your_domain_or_origin');
        }
    }

    window.onload = function () {
        const buttons = document.querySelectorAll('.favorite-button');
        buttons.forEach(button => {
            const index = button.getAttribute('data-index');
            const localStorageKey = "favorite_" + index;
            const icon = button.querySelector('.favorite-icon');

            const isFavorite = localStorage.getItem(localStorageKey);
            if (isFavorite === 'true') {
                icon.classList.remove('favorite-icon-gray');
                icon.classList.add('favorite-icon-yellow');
            }
        });
    };
</script>
