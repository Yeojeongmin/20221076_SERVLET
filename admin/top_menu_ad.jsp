<%-- 메뉴 작업 완료 --%>
<%@ page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand navbar-white" style="background-color: #A1887F;">
	<div class="dropdown">
<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #8D6E63; font-weight: bold; border: 0;">
    		카테고리
</button>
<div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="background-color: #A1887F;">
    <a class="dropdown-item" href="#" style="font-weight: bold; color: #FFFFFF;">cloth</a>
    <a class="dropdown-item" href="#" style="font-weight: bold; color: #FFFFFF;">shoes</a>
    <a class="dropdown-item" href="#" style="font-weight: bold; color: #FFFFFF;">bag</a>
    <a class="dropdown-item" href="#" style="font-weight: bold; color: #FFFFFF;">towel</a>
    <a class="dropdown-item" href="#" style="font-weight: bold; color: #FFFFFF;">Doll</a>
</div>


	</div>
    
    <div>
        <img src="image\Lotte_logo.png?v=1" class="img-fluid" alt="main_image" width="250" height="100" >
    </div>
    
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="index_ad.jsp">홈페이지</a>
            <a class="navbar-brand" href="../member/member_view.jsp">회원 보기</a>
            <a class="navbar-brand" href="../member/member_update.jsp">회원 수정</a>
            <a class="navbar-brand" href="../member/member_delete_process.jsp">회원 삭제</a>
            <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
           <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete">삭제</a>
            <a class="navbar-brand" href="../login/logout.jsp">로그아웃</a>
            <a class="navbar-brand" href="../index.jsp">일반모드</a>
		</div>
	</div>
</nav>
