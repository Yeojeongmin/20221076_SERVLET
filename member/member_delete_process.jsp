<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원 삭제 처리</title>
    <script>
    function showConfirmation() {
        alert("회원 정보가 성공적으로 삭제되었습니다!");
        window.location.href = 'member_update.jsp';
    }

    function showFailure() {
        alert("회원 삭제를 실패하였습니다. 나중에 다시 시도하십시오.");
        window.location.href = 'member_update.jsp';
    }
</script>

</head>
<body>
    <%
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // JDBC 연결 설정
            Class.forName("com.mysql.jdbc.Driver");
            String jdbcUrl = "jdbc:mysql://localhost/ggouppang_20221076";
            String dbUser = "root";
            String dbPassword = "0324";

            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // 폼에서 값을 가져오기
            String j_ID = request.getParameter("j_ID");

            // 삭제할 SQL 쿼리
            String query = "DELETE FROM member WHERE j_ID=?";
            pstmt = conn.prepareStatement(query);

            pstmt.setString(1, j_ID);

            // 삭제 쿼리 실행
            int rowsAffected = pstmt.executeUpdate();

            // 삭제가 성공적인지 확인
            if (rowsAffected > 0) {
    %>
                <script>
                    // Show confirmation alert
                    showConfirmation();
                </script>
    <%
            } else {
    %>
                <script>
                    // Show failure alert
                    showFailure();
                </script>
    <%
            }
        } catch (Exception e) {
    // 에러 메시지 출력
    out.println("Exception: " + e.getMessage());
    e.printStackTrace();
    // 실패 알림에 에러 메시지 추가
    out.println("<script>showFailure()</script>");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
