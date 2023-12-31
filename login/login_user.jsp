<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
.navbar-brand {
  color: white; /* 텍스트 색상을 흰색으로 설정 */
  padding: 10px; /* 선택적으로 여백(padding)을 추가할 수 있습니다. */
  font-weight: bold; /* 굵은 텍스트를 적용 */
}
     .dropdown-menu {
         font-weight: bold; /* 굵은 텍스트를 적용 */
         color:white; /* 변경하고자 하는 색상으로 조절하세요 */
     }
    .dropdown-item:hover {
        font-weight: bold; /* 굵은 텍스트를 적용 */
        color: #757575; /* 변경하고자 하는 색상으로 조절하세요 */
    }
</style>
    </head>
<body>
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
			<a class="navbar-brand" href="../index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="login_user.jsp">로그인</a>
            <a class="navbar-brand" href="../member/member_join.jsp">회원가입</a>
            <a class="navbar-brand" href="../BoardListAction.do?pageNum=1">게시판(고객센터)</a>
			<a class="navbar-brand" href="../admin/index_ad.jsp">관리자모드</a>
            <a class="navbar-brand" href="../cart/product_cart.jsp" style="margin-left: 360px;">
            <i class="fas fa-shopping-cart fa-flip-horizontal"></i>
            </a>


		</div>
	</div>
</nav>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">일반 사용자 모드 접근 - 로그인이 필요합니다.</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%> 
		<form class="form-signin" action="j_security_check" method="post">
			<div class="form-group">
				<label for="inputUserName" class="sr-only">User Name</label> 
				<input type="text" class="form-control" placeholder="ID" name='j_username' required autofocus>
			</div>
			<div class= "form-group">
				<label for="inputPassword" class="sr-only">Password</label> 
				<input  type="password" class="form-control" placeholder="Password" name='j_password' required>
			</div>
			<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>

            </form>
            <form class="form-signin" action="../member/member_join.jsp" method="post">
    <button class="btn btn btn-lg btn-success btn-block" type="submit">회원가입</button>
            </form>
	</div>
</div>
</body>
</html>
