<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>회원 수정</title>
</head>
<body>
    <jsp:include page="top_menu_ad.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">회원 수정 화면</h1>
        </div>
    </div>
    <%@ include file="../db/db_conn.jsp"%>
    <%
        String memberId = request.getParameter("id");

        String sql = "SELECT * FROM member WHERE j_ID = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, memberId);
        rs = pstmt.executeQuery();
        if (rs.next()) {
    %>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <!-- 이미지 부분은 회원 정보에서 필요한 이미지가 있다면 추가하세요 -->
            </div>
            <div class="col-md-8">
                <form name="editMember" action="member_update_process.jsp" class="form-horizontal" method="post">
                    <!-- 여기서부터는 회원 수정에 필요한 필드를 추가하시면 됩니다 -->
                    <div class="form-group row">
                        <label class="col-sm-2">아이디</label>
                        <div class="col-sm-3">
                            <input type="text" id="memberId" name="memberId" class="form-control" value='<%=rs.getString("j_ID")%>' readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2">비밀번호</label>
                        <div class="col-sm-3">
                            <input type="password" id="password" name="password" class="form-control" value="<%=rs.getString("j_Password")%>">
                        </div>
                    </div>
                    <!-- 나머지 회원 정보 수정 필드들을 추가하세요 -->
                    <!-- 예: 이름, 성별, 생일, 이메일, 전화번호, 주소 등 -->

                    <div class="form-group row">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="submit" class="btn btn-primary" value="수정">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <%
        }
        if (rs != null)
            rs.close();
        if (pstmt != null)
            pstmt.close();
        if (conn != null)
            conn.close();
    %>
    <hr>
    <jsp:include page="footer_ad.jsp" />
</body>
</html>
