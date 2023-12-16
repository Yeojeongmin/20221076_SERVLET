<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원 수정</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        /* 스타일 추가 */
        .navbar-brand {
            color: white;
            padding: 10px;
            font-weight: bold;
        }
        input {
            width: 100px;
            font-weight: bold;
            color: #8E928F;
            border: 0px solid #8E928F;
        }
        body, table, th, td, input {
            margin-left: -10px;
        }
        .submit-button {
            margin-top: -10px;
            margin-left: 50px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1><strong>회원 수정</strong></h1>
        <%
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                // JDBC 연결 설정
                Class.forName("com.mysql.jdbc.Driver");
                String jdbcUrl = "jdbc:mysql://localhost/ggouppang_20221076";
                String dbUser = "root";
                String dbPassword = "0324";

                conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                // SQL 쿼리 작성 및 실행
                String query = "SELECT * FROM member";
                pstmt = conn.prepareStatement(query);
                rs = pstmt.executeQuery();
        %>

        <!-- 테이블 시작 -->
        <table class="table">
            <thead>
                <tr>
                    <!-- 테이블 헤더 추가 -->
                    <th>ID</th>
                    <th>Password</th>
                    <th>이름</th>
                    <th>성별</th>
                    <th>생년월일</th>
                    <th>이메일</th>
                    <th>전화번호</th>
                    <th>주소</th>
                    <th>수정</th>
                    <th>삭제</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // 결과를 HTML 폼에 채우기
                    while (rs.next()) {
                        String j_ID = rs.getString("j_ID");
                %>
                <tr>
                    <!-- ID 출력 -->
                    <td><input type="text" name="j_ID" value="<%= j_ID %>" required readonly></td>
                    <!-- Password, 이름, 성별, 생년월일, 이메일, 전화번호, 주소 입력 폼 추가 -->
                    <td><input type="password" name="j_Password" value="<%= rs.getString("j_Password") %>" required></td>
                    <td><input type="text" name="j_Name" value="<%= rs.getString("j_Name") %>" required></td>
                    <td><input type="text" name="j_Gender" value="<%= rs.getString("j_Gender") %>" required></td>
                    <td><input type="text" name="j_Birth" value="<%= rs.getString("j_Birth") %>" required></td>
                    <td><input type="text" name="j_Email" value="<%= rs.getString("j_Email") %>" required></td>
                    <td><input type="text" name="j_Phone" value="<%= rs.getString("j_Phone") %>" required></td>
                    <td><input type="text" name="j_Address" value="<%= rs.getString("j_Address") %>" required></td>
                    <!-- 수정 폼 추가 -->
                    <td>
                        <form action="member_update_process.jsp" method="post">
                            <button type="submit" class="btn btn-success" style="width: 70px; height: 35px; text-align: center; font-weight: bold;">수정</button>
                        </form>
                    </td>
                    <!-- 삭제 폼 추가 -->
                    <td>
                        <form id="deleteForm_<%= j_ID %>" action="member_delete_process.jsp" method="post">
                            <button type="button" class="btn btn-success" style="width: 70px; height: 35px; text-align: center; font-weight: bold;" onclick="deleteRow('<%= j_ID %>')">삭제</button>
                            <input type="hidden" name="j_ID" value="<%= j_ID %>">
                        </form>
                    </td>
                </tr>
                <%
                    }
                } catch (Exception e) {
                    out.println("Exception: " + e.getMessage());
                    e.printStackTrace();
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (pstmt != null) pstmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                %>
            </tbody>
        </table>
        <br><br><br><br><br><br><br><br><br><br><br><br>

        <!-- 네비게이션 바 추가 -->
        <nav class="navbar navbar-expand navbar-white" style="background-color: #5AE787; margin-top: 20px; margin-left: -200px; height: 90px; width: 1500px;">
            <div>
                <img src="image\Lotte_logo.png?v=1" class="img-fluid" alt="main_image" width="100" height="70" >
            </div>
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="../admin/index_ad.jsp">홈페이지</a>
                    <a class="navbar-brand" href="../member/member_view.jsp">회원 보기</a>
                    <a class="navbar-brand" href="../member/member_update.jsp">회원 수정</a>
                    <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
                    <a class="navbar-brand" href="product_add.jsp">상품 등록</a>
                    <a class="navbar-brand" href="product_edit.jsp?edit=update">상품 수정</a>
                    <a class="navbar-brand" href="product_edit.jsp?edit=delete">상품 삭제</a>
                    <a class="navbar-brand" href="../login/logout.jsp">로그아웃</a>
                    <a class="navbar-brand" href="../index.jsp">일반모드</a>
                </div>
            </div>
        </nav>
    </div>

    <!-- 삭제 버튼 클릭 시 실행될 스크립트 추가 -->
    <script>
        function deleteRow(j_ID) {
            // 삭제 여부 확인
            if (confirm("정말로 삭제하시겠습니까?")) {
                // form 전송
                document.getElementById("deleteForm_" + j_ID).submit();
            }
        }
    </script>
</body>
</html>
