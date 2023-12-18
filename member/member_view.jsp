<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <br>
    <title>회원 목록</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
.navbar-brand {
  color: white; /* 텍스트 색상을 흰색으로 설정 */
  padding: 10px; /* 선택적으로 여백(padding)을 추가할 수 있습니다. */
  font-weight: bold; /* 굵은 텍스트를 적용 */
}

</style>
    </head>
<body>
    <div class="container">
        <h1><strong>회원 목록</strong></h1>
        <table class="table">
            <thead>
                <tr>
                    <th>j_ID</th>
                    <th>j_Password</th>
                    <th>j_Name</th>
                    <th>j_Gender</th>
                    <th>j_Birth</th>
                    <th>j_Email</th>
                    <th>j_Phone</th>
                    <th>j_Address</th>
                    <th>regist_day</th>
                </tr>
            </thead>
            <tbody>
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

                        // 결과를 HTML 테이블에 동적으로 추가
                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getString("j_ID") + "</td>");
                            out.println("<td>" + rs.getString("j_Password") + "</td>");
                            out.println("<td>" + rs.getString("j_Name") + "</td>");
                            out.println("<td>" + rs.getString("j_Gender") + "</td>");
                            out.println("<td>" + rs.getString("j_Birth") + "</td>");
                            out.println("<td>" + rs.getString("j_Email") + "</td>");
                            out.println("<td>" + rs.getString("j_Phone") + "</td>");
                            out.println("<td>" + rs.getString("j_Address") + "</td>");
                            out.println("<td>" + rs.getString("regist_day") + "</td>");
                            out.println("</tr>");
                        }
                    } catch (Exception e) {
                        out.println("Exception: " + e.getMessage());
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
       <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<nav class="navbar navbar-expand navbar-white" style="background-color: #5AE787; margin-top: 20px; margin-left: -200px; height: 90px; width: 1500px;">
   <div>
    <img src="image\Lotte_logo.png?v=2" class="img-fluid" alt="main_image" width="200" height="70">
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
</body>
</html>
