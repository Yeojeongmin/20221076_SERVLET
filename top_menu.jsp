<%-- 메뉴 작업 완료 --%>
<%@ page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand  navbar-white bg-white">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
  		</button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">시즌1</a>
            <a class="dropdown-item" href="#">시즌2</a>
            <a class="dropdown-item" href="#">시즌3</a>
            <a class="dropdown-item" href="#">시즌4</a>

        </div>
	</div>
    
    <div>
        <img src="image\Lotte_logo.jpg" class="img-fluid" alt="main_image" width="250" height="100" >
    </div>
    
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./index.jsp">홈페이지</a>
            <a class="navbar-brand" href="./index.jsp">로그인</a>
            <a class="navbar-brand" href="./index.jsp">회원가입</a>
            <a class="navbar-brand" href="./index.jsp">고객센터</a>	
			<a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>

		</div>
	</div>
</nav>
