<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <div>
        <img src="image\Lotte_logo.jpg" class="img-fluid" alt="main_image" width="250" height="100">
    </div>
    
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="../index.jsp">홈페이지</a>
            <a class="navbar-brand" href="/admin/index_ad.jsp">회원가입</a>
            <a class="navbar-brand" href="../index.jsp">고객센터</a>	
            <a class="navbar-brand" href="/admin/index_ad.jsp">관리자모드</a>
        </div>
    </div>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">관리자 모드 접근 - 로그인이 필요합니다.</h1>
        </div>
    </div>
    <div class="container" align="center">
        <div class="col-md-4 col-md-offset-4">
            <h3 class="form-signin-heading">Please sign in</h3>
            <%
                String username = request.getParameter("j_username");
                String password = request.getParameter("j_password");

                // 입력한 아이디와 비밀번호가 admin / 123123일 때 로그인 성공
                if ("admin".equals(username) && "123123".equals(password)) {
                    // 세션에 사용자 정보를 저장합니다.
                    session.setAttribute("loggedInUser", username);

                    // 로그인 후 이동할 페이지를 설정하거나 다른 동작을 수행할 수 있습니다.
                    response.sendRedirect("/admin/index_ad.jsp");
                } else {
                    // 로그인 실패 시 에러 메시지를 표시합니다.
                    out.println("<div class='alert alert-danger'>");
                    out.println("아이디와 비밀번호를 확인해 주세요");
                    out.println("</div>");
                }
            %> 
            <form class="form-signin" action="" method="post">
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
        </div>
    </div>
</body>
</html>
