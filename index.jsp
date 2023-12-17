<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.Date"%>


<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
	window.open("popup/popup1.jsp", "popup", "width=365, height = 250, left = 0, top=0")
</script>
 <style>
.navbar-brand {
  color: white; /* 텍스트 색상을 흰색으로 설정 */
  padding: 10px; /* 선택적으로 여백(padding)을 추가할 수 있습니다. */
  font-weight: bold; /* 굵은 텍스트를 적용 */
}
    .dropdown-item:hover {
        font-weight: bold; /* 굵은 텍스트를 적용 */
        color: #757575; /* 변경하고자 하는 색상으로 조절하세요 */
    }
</style>

<title>Welcome</title>
</head>
<body>
    <%@ include file="top_banner.jsp"%>
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
			<a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="login/login_user.jsp">로그인</a>
            <a class="navbar-brand" href="member/member_join.jsp">회원가입</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
			<a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>

		</div>
	</div>
</nav>
<br>
    <%@ include file="body_main.jsp"%>
    <%@ include file="footer.jsp"%>
    
</body>
</html>
