<%-- 메뉴 작업 완료 --%>
<%@ page contentType="text/html; charset=utf-8"%>
 <nav class="navbar navbar-expand navbar-white" style="background-color: #A1887F;">
	<div class="dropdown">
<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" 
        aria-haspopup="true" aria-expanded="false"  style="background-color: #8D6E63; font-weight: bold; border: 0;">
        카테고리
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="background-color: #A1887F;  font-weight: bold; color: white;">
        <a class="dropdown-item" href="#" onclick="setCategory('cloth')">cloth</a>
        <a class="dropdown-item" href="#" onclick="setCategory('shoes')">shoes</a>
        <a class="dropdown-item" href="#" onclick="setCategory('bag')">bag</a>
        <a class="dropdown-item" href="#" onclick="setCategory('towel')">towel</a>
        <a class="dropdown-item" href="#" onclick="setCategory('Doll')">Doll</a>
    </div>



	</div>
    
    <div>
        <img src="image\Lotte_logo.png?v=1" class="img-fluid" alt="main_image" width="250" height="100" >
    </div>
    
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="login/login_user.jsp">로그인</a>
            <a class="navbar-brand" href="member/member_join.jsp">회원가입</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
			<a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>
            <a class="navbar-brand" href="cart/product_cart.jsp" style="margin-left: 360px;">
            <i class="fas fa-shopping-cart fa-flip-horizontal"></i>
            </a>


		</div>
	</div>
</nav>