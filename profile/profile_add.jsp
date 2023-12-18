<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%! 
    String greeting = "프로필에 관심 품목을 보여줍니다.";
    String tagline = "하단 페이지: 확인";
%>

<%
    ProductRepository dao = ProductRepository.getInstance();
    ArrayList<Product> listOfProducts = dao.getAllProducts(); // 리스트에 상품 전체 정보를 얻어옵니다.
%>
<head>
    <!-- 여기에는 필요한 스타일링을 추가하세요 -->
    <style>
        .favorite-section {
            display: flex;
            flex-wrap: wrap;
        }

        .favorite-item {
            border: 1px solid #ddd;
            margin: 10px;
            padding: 10px;
            text-align: center;
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
        <div class="favorite-section" id="interest-section">
            <!-- 여기에 관심 품목이 동적으로 추가됩니다. -->
        </div>
    </div>
</div>

<script>
    // 이미 관심 품목인지 확인하는 함수
    function isProductInInterest(productName) {
        var interestItems = document.getElementsByClassName('favorite-item');
        for (var i = 0; i < interestItems.length; i++) {
            var name = interestItems[i].querySelector('strong').innerText;
            if (name === productName) {
                return true;
            }
        }
        return false;
    }

    // 관심 품목 추가
    function addInterest(productName, productDescription, productPrice, productImage) {
        var interestSection = document.getElementById('interest-section');

        // 노란색 별 버튼만 추가
        var favoriteButtons = document.querySelectorAll('.favorite-icon-yellow');
        for (var i = 0; i < favoriteButtons.length; i++) {
            var button = favoriteButtons[i];
            var index = button.getAttribute('data-index');
            if (isProductInInterest(listOfProducts[index].getPname())) {
                var interestItem = document.createElement('div');
                interestItem.classList.add('favorite-item');
                interestItem.innerHTML = `
                    <img src="${productImage}" alt="${productName}">
                    <p><strong>${productName}</strong></p>
                    <p>${productDescription}</p>
                    <p>가격: ${productPrice}원</p>
                    <button onclick="removeInterest('${productName}')">Remove</button>
                `;
                interestSection.appendChild(interestItem);
            }
        }
    }

    // 관심 품목 제거
    function removeInterest(productName) {
        var interestSection = document.getElementById('interest-section');
        var interestItems = interestSection.getElementsByClassName('favorite-item');

        // 해당 상품 찾아서 제거
        for (var i = 0; i < interestItems.length; i++) {
            var name = interestItems[i].querySelector('strong').innerText;
            if (name === productName) {
                interestSection.removeChild(interestItems[i]);
                break;
            }
        }
    }

    // 별 모양 버튼 색 변경 및 관심 품목 추가 또는 제거
    function toggleFavorite(button, productName, productDescription, productPrice, productImage) {
        const icon = button.querySelector('.favorite-icon');
        const isFavorite = icon.classList.contains('favorite-icon-yellow');

        if (isFavorite) {
            removeInterest(productName);
            icon.classList.remove('favorite-icon-yellow');
            icon.classList.add('favorite-icon-gray');
        } else {
            addInterest(productName, productDescription, productPrice, productImage);
            icon.classList.remove('favorite-icon-gray');
            icon.classList.add('favorite-icon-yellow');
        }
    }
</script>
