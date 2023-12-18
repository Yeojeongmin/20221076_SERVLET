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
    .form-signin {
        max-width: 1000px;
        margin: 0 auto;
    }

    .form-group {
        margin-left: -450px;
    }

    .form-control {
        width: 100%;
        font-weight: bold;
        color: #8E928F;
        border: 0px solid #EEEEEE;
    }

    .btn-info {
        margin-top: -10px;
        margin-left: 100px;
    }
     .btn-success {
         margin-left: 250px;
        width: 300px;
        font-weight: bold;
        height: 50px;
        text-align: center;
    }

    .btn-block {
        margin-top: 10px; /* 버튼 간의 간격 조정을 위한 여백 추가 */
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
            <h1 class="display-3">회원가입</h1>
        </div>
    </div>

     <div class="container" align="center">
        <div class="col-md-4 col-md-offset-4">
            <h3 class="form-signin-heading"></h3>

            <form class="form-signin" action="member_join_process.jsp" method="post">
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading"></h3>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%> 
		<form class="form-signin" action="j_security_check" method="post">
    <div class="form-group" style="width: 1000px;">
        <label for="inputID" class="sr-only">아이디</label>
        <input type="text" class="form-control" placeholder="ID" name='j_ID' required autofocus>
    </div>
    <div class="form-group" style="width: 1000px;">
        <label for="inputPassword" class="sr-only">패스워드</label>
        <input type="password" class="form-control" placeholder="Password" name='j_Password' required>
    </div>
    <div class="form-group" style="width: 1000px;">
        <label for="inputName" class="sr-only">이름</label>
        <input type="text" class="form-control" placeholder="Name" name='j_Name' required>
    </div>
    <div class="form-group" style="width: 1000px;">
        <label for="inputGender" class="sr-only">성별</label>
        <input type="text" class="form-control" placeholder="Gender" name="j_Gender" required>
    </div>
    <div class="form-group" style="width: 1000px;">
        <label for="inputBirthday" class="sr-only">생일</label>
        <input type="date" class="form-control" placeholder="Birth" name="j_Birth" required>
    </div>
    <div class="form-group" style="width: 1000px;">
        <label for="inputEmail" class="sr-only">메일주소</label>
        <input type="email" class="form-control" placeholder="Email" name='j_Email' required>
    </div>
    <div class="form-group" style="width: 1000px;">
        <label for="inputPhone" class="sr-only">휴대폰 번호</label>
        <input type="tel" class="form-control" placeholder="Phone Number" name='j_phone' required>
    </div>
    <div class="form-group" style="width: 1000px;">
        <label for="inputAddress" class="sr-only">주소</label>
        <div class="input-group">
            <textarea class="form-control" placeholder="Address" name='j_Address' id="inputAddress" required></textarea>
            <div class="input-group-append">
                <button type="button" class="btn btn-info" onclick="location.href='https://tablog.neocities.org/keywordposition'">주소 찾기</button>
            </div>
        </div>
    </div>

         
<form class="form-signin" action="j_security_check" method="post">
<button class="btn btn-lg btn-success btn-block" type="submit">가입</button>
</form>
			<form class="form-signin" action="j_security_check" method="post">
          <button class="btn btn-lg btn-success btn-block" type="button" onclick="goBack()">뒤로 가기</button>
</form>      
		</form>
	</div>
</div>
                </form></div></div>
    
   <script>
        function searchAddress() {
            window.open('https://map.kakao.com/?q=' + encodeURIComponent(document.getElementById('inputAddress').value));
        }
        
        // 이전 페이지로 이동하는 함수
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>